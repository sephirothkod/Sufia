module Sufia
  module GenericFile
    module Querying
      extend ActiveSupport::Concern

      module ClassMethods
        # query to find generic files created during the time range
        # @param [DateTime] start_datetime starting date time for range query
        # @param [DateTime] end_datetime ending date time for range query
        def find_by_date_created(start_datetime, end_datetime = nil)
          return [] if start_datetime.blank?  # no date just return nothing
          # Notice that we use date_uploaded_ssi because that is a date that we
          # control. The system_create_dtsi is a date controlled by Fedora and
          # for files migrated from one repo to another it reflects the date
          # the file was added to the Fedora repo, not the date the user originally
          # uploaded the file.
          where(build_date_query(start_datetime, end_datetime, "date_uploaded_ssi"))
        end

        def build_date_query(start_datetime, end_datetime, date_field = "system_create_dtsi")
          start_date_str =  start_datetime.utc.strftime(date_format)
          end_date_str = if end_datetime.blank?
                           "*"
                         else
                           end_datetime.utc.strftime(date_format)
                         end
          "#{date_field}:[#{start_date_str} TO #{end_date_str}]"
        end

        def where_private
          where_access_is 'private'
        end

        def where_public
          where_access_is 'public'
        end

        def where_registered
          where_access_is 'registered'
        end

        def where_access_is(access_level)
          where Solrizer.solr_name('read_access_group', :symbol) => access_level
        end

        def date_format
          "%Y-%m-%dT%H:%M:%SZ"
        end
      end
    end
  end
end
