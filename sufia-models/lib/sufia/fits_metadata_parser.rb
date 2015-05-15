module Sufia
  class FitsMetadataParser
    include OM::XML::Document

    def self.run(file)
      from_xml(file)
    end

    set_terminology do |t|
      t.root(path: "fits",
        xmlns: "http://hul.harvard.edu/ois/xml/ns/fits/fits_output",
        schema: "http://hul.harvard.edu/ois/xml/xsd/fits/fits_output.xsd")
      t.identification {
        t.identity {
          t.format_label(path: { attribute: "format" })
          t.mime_type(path: { attribute: "mimetype" })
          t.pronom_id(path: 'externalIdentifier')
        }
      }
      t.fileinfo {
        t.file_size(path: "size")
        t.last_modified(path: "lastmodified")
        t.creating_application_name(path: 'creatingApplicationName')
        t.file_created(path: "created")
        t.filename(path: "filename")
        t.original_checksum(path: "md5checksum")
        t.rights_basis(path: "rightsBasis")
        t.copyright_basis(path: "copyrightBasis")
        t.copyright_note(path: "copyrightNote")
      }
      t.filestatus {
        t.well_formed(path: "well-formed")
        t.valid(path: "valid")
        t.status_message(path: "message")
      }
      t.metadata {
        t.document {
          t.file_title(path: "title")
          t.file_author(path: "author")
          t.file_language(path: "language")
          t.page_count(path: "pageCount")
          t.word_count(path: "wordCount")
          t.character_count(path: "characterCount")
          t.paragraph_count(path: "paragraphCount")
          t.line_count(path: "lineCount")
          t.table_count(path: "tableCount")
          t.graphics_count(path: "graphicsCount")
          t.tagged(path: 'isTagged')
          t.has_outline(path: 'hasOutline')
          t.has_annotations(path: 'hasAnnotations')
          t.rights_managed(path: 'isRightsManaged')
          t.protected(path: 'isProtected')
          t.has_forms(path: 'hasForms')
        }
        t.image {
          t.byte_order(path: "byteOrder")
          t.compression(path: "compressionScheme")
          t.width(path: "imageWidth")
          t.height(path: "imageHeight")
          t.color_space(path: "colorSpace")
          t.profile_name(path: "iccProfileName")
          t.profile_version(path: "iccProfileVersion")
          t.orientation(path: "orientation")
          t.color_map(path: "colorMap")
          t.image_producer(path: "imageProducer")
          t.capture_device(path: "captureDevice")
          t.scanning_software(path: "scanningSoftwareName")
          t.exif_version(path: "exifVersion")
          t.gps_timestamp(path: "gpsTimeStamp")
          t.latitude(path: "gpsDestLatitude")
          t.longitude(path: "gpsDestLongitude")
          t.sub_sampling(path: 'YCbCbSubSampling')
          t.sampling_frequency_unit(path: 'samplingFrequencyUnit')
          t.x_sampling_frequency(path: 'xSamplingFrequency')
          t.y_sampling_frequency(path: 'ySamplingFrequency')
          t.light_source(path: 'lightSource')
          t.bits_per_sample(path: 'bitsPerSample')
        }
        t.text {
          t.character_set(path: "charset")
          t.markup_basis(path: "markupBasis")
          t.markup_language(path: "markupLanguage")
        }
        t.audio {
          t.file_title(path: "title")
          t.file_author(path: "author")
          t.number_of_samples(path: 'numSamples')
          t.encoding(path: 'audioDataEncoding')
          t.block_align(path: 'blockAlign')
          t.word_size(path: 'wordSize')
          t.byte_order(path: 'byteOrder')
          t.duration(path: "duration")
          t.bit_depth(path: "bitDepth")
          t.sample_rate(path: "sampleRate")
          t.bit_rate(path: 'bitRate')
          t.milliseconds(path: 'milliseconds')
          t.channels(path: "channels")
          t.data_format(path: "dataFormatType")
          t.offset(path: "offset")
        }
        t.video {
          t.width(path: "imageWidth")
          t.height(path: "imageHeight")
          t.duration(path: "duration")
          t.sample_rate(path: "sampleRate")
          t.rotation(path: 'rotation')
          t.frame_rate(path: "frameRate")
          t.bit_depth(path: "bitDepth")
          t.channels(path: "channels")
          t.creating_application_name(path: 'creatingApplicationName')
          t.pixel_aspect_ratio(path: 'pixelAspectRatio')
          t.maximum_bit_rate(path: 'maxBitRate')
          t.video_compressor(path: 'videoCompressor')
          t.audio_sample_rate(path: 'audioSampleRate')
          t.encoding(path: 'encoding')
          t.compression(path: 'compressionScheme')
          t.x_sampling_frequency(path: 'xSamplingFrequency')
          t.y_sampling_frequency(path: 'ySamplingFrequency')
        }
      }
      t.format_label(proxy: [:identification, :identity, :format_label])
      t.mime_type(proxy: [:identification, :identity, :mime_type])
      t.pronom_id(proxy: [:identification, :identity, :pronom_id])
      t.file_size(proxy: [:fileinfo, :file_size])
      t.last_modified(proxy: [:fileinfo, :last_modified])
      t.file_created(proxy: [:fileinfo, :file_created])
      t.filename(proxy: [:fileinfo, :filename])
      t.original_checksum(proxy: [:fileinfo, :original_checksum])
      t.rights_basis(proxy: [:fileinfo, :rights_basis])
      t.copyright_basis(proxy: [:fileinfo, :copyright_basis])
      t.copyright_note(proxy: [:fileinfo, :copyright_note])
      t.creating_application_name(proxy: [:fileinfo, :creating_application_name])
      t.well_formed(proxy: [:filestatus, :well_formed])
      t.valid(proxy: [:filestatus, :valid])
      t.status_message(proxy: [:filestatus, :status_message])
      t.file_title(proxy: [:metadata, :document, :file_title])
      t.file_author(proxy: [:metadata, :document, :file_author])
      t.page_count(proxy: [:metadata, :document, :page_count])
      t.file_language(proxy: [:metadata, :document, :file_language])
      t.word_count(proxy: [:metadata, :document, :word_count])
      t.character_count(proxy: [:metadata, :document, :character_count])
      t.paragraph_count(proxy: [:metadata, :document, :paragraph_count])
      t.line_count(proxy: [:metadata, :document, :line_count])
      t.table_count(proxy: [:metadata, :document, :table_count])
      t.graphics_count(proxy: [:metadata, :document, :graphics_count])
      t.tagged(proxy: [:metadata, :document, :tagged])
      t.has_outline(proxy: [:metadata, :document, :has_outline])
      t.has_annotatons(proxy: [:metadata, :document, :has_annotations])
      t.has_forms(proxy: [:metadata, :document, :has_forms])
      t.rights_managed(proxy: [:metadata, :document, :rights_managed])
      t.protected(proxy: [:metadata, :document, :protected])
      t.byte_order(proxy: [:metadata, :image, :byte_order])
      t.compression(proxy: [:metadata, :image, :compression])
      t.width(proxy: [:metadata, :image, :width])
      t.video_width( proxy: [:metadata, :video, :width])
      t.height(proxy: [:metadata, :image, :height])
      t.height(proxy: [:metadata, :video, :height])
      t.color_space(proxy: [:metadata, :image, :color_space])
      t.profile_name(proxy: [:metadata, :image, :profile_name])
      t.profile_version(proxy: [:metadata, :image, :profile_version])
      t.orientation(proxy: [:metadata, :image, :orientation])
      t.color_map(proxy: [:metadata, :image, :color_map])
      t.image_producer(proxy: [:metadata, :image, :image_producer])
      t.capture_device(proxy: [:metadata, :image, :capture_device])
      t.scanning_software(proxy: [:metadata, :image, :scanning_software])
      t.exif_version(proxy: [:metadata, :image, :exif_version])
      t.gps_timestamp(proxy: [:metadata, :image, :gps_timestamp])
      t.latitude(proxy: [:metadata, :image, :latitude])
      t.longitude(proxy: [:metadata, :image, :longitude])
      t.sub_sampling(proxy: [:metadata, :image, :sub_sampling])
      t.sampling_frequency_unit(proxy: [:metadata, :image, :sampling_frequency_unit])
      t.x_sampling_frequency(proxy: [:metadata, :image, :x_sampling_frequency])
      t.y_sampling_frequency(proxy: [:metadata, :image, :y_sampling_frequency])
      t.light_source(proxy: [:metadata, :image, :light_source])
      t.bits_per_sample(proxy: [:metadata, :image, :bits_per_sample])
      t.video_x_sampling_frequency(proxy: [:metadata, :video, :x_sampling_frequency])
      t.video_y_sampling_frequency(proxy: [:metadata, :video, :y_sampling_frequency])
      t.character_set(proxy: [:metadata, :text, :character_set])
      t.markup_basis(proxy: [:metadata, :text, :markup_basis])
      t.markup_language(proxy: [:metadata, :text, :markup_language])
      t.duration(proxy: [:metadata, :audio, :duration])
      t.duration(proxy: [:metadata, :video, :duration])
      t.bit_depth(proxy: [:metadata, :audio, :bit_depth])
      t.audio_sample_rate(proxy: [:metadata, :audio, :sample_rate])
      t.video_sample_rate(proxy: [:metadata, :video, :sample_rate])
      t.channels(proxy: [:metadata, :audio, :channels])
      t.data_format(proxy: [:metadata, :audio, :data_format])
      t.offset(proxy: [:metadata, :audio, :offset])
      t.number_of_samples(proxy: [:metadata, :audio, :number_of_samples])
      t.block_align(proxy: [:metadata, :audio, :block_align])
      t.word_size(proxy: [:metadata, :audio, :word_size])
      t.bit_rate(proxy: [:metadata, :audio, :bit_rate])
      t.milliseconds(proxy: [:metadata, :audio, :milliseconds])
      t.creating_application_name(proxy: [:metadata, :video, :creating_application_name])
      t.pixel_aspect_ratio(proxy: [:metadata, :video, :pixel_aspect_ratio])
      t.maximum_bit_rate(proxy: [:metadata, :video, :maximum_bit_rate])
      t.video_compressor(proxy: [:metadata, :video, :video_compressor])
      t.video_audio_sample_rate(proxy: [:metadata, :video, :audio_sample_rate])
      t.encoding(proxy: [:metadata, :video, :encoding])
      t.frame_rate(proxy: [:metadata, :video, :frame_rate])
    end

    def self.xml_template
      builder = Nokogiri::XML::Builder.new do |xml|
        xml.fits(xmlns: 'http://hul.harvard.edu/ois/xml/ns/fits/fits_output',
          'xmlns:xsi' => 'http://www.w3.org/2001/XMLSchema-instance',
          'xsi:schemaLocation' =>
          "http://hul.harvard.edu/ois/xml/ns/fits/fits_output
    http://hul.harvard.edu/ois/xml/xsd/fits/fits_output.xsd",
          version: "0.8.2",
          timestamp: "5/14/15 11:04 AM") {
          xml.identification { xml.identity(toolname: 'FITS') }
        }
      end
      builder.doc
    end
  end
end
