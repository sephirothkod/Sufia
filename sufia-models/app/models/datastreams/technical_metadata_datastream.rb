class TechnicalMetadataDatastream < ActiveFedora::NtriplesRDFDatastream
  property :mime_type, predicate: EBUCore.hasMimeType
  property :pronom_id, predicate: RDF::URI('http://reference.data.gov.uk/technical-registry/puid')
  property :format_label, predicate: RDF::Vocab::PREMIS.hasFormatName
  property :file_size, predicate: EBUCore.fileSize
  property :last_modified, predicate: EBUCore.dateModified
  property :file_created, predicate: EBUCore.dateCreated
  property :creating_application_name
  property :tagged
  property :has_outline
  property :has_annotations
  property :has_forms
  property :rights_managed
  property :protected, predicate: NFO.isPasswordProtected
  property :sub_sampling, predicate: EXIF.yCbCrSubSampling
  property :sampling_frequency_unit
  property :x_sampling_frequency
  property :y_sampling_frequency
  property :video_x_sampling_frequency
  property :video_y_sampling_frequency
  property :light_source, predicate: EXIF.lightSource
  property :bits_per_sample, predicate: NFO.bitsPerSample
  property :number_of_samples, predicate: NFO.sampleCount
  property :block_align
  property :word_size
  property :bit_rate, predicate: NFO.averageBitRate
  property :milliseconds
  property :pixel_aspect_ratio, predicate: NFO.aspectRatio
  property :maximum_bit_rate, predicate: EBUCore.bitRateMax
  property :video_compressor
  property :audio_sample_rate, predicate: NFO.sampleRate
  property :video_sample_rate, predicate: EBUCore.sampleRate
  property :video_audio_sample_rate, predicate: NFO.sampleRate
  property :encoding, predicate: NFO.encoding
  property :filename, predicate: EBUCore.filename
  property :original_checksum, predicate: RDF::Vocab::PREMIS.hasMessageDigest
  property :rights_basis, predicate: EBUCore.rightsExpression
  property :copyright_note, predicate: EXIF.copyright
  property :copyright_basis
  property :well_formed
  property :valid
  property :status_message
  property :file_title, predicate: RDF::DC11.title
  property :file_author, predicate: RDF::DC11.creator
  property :page_count, predicate: NFO.pageCount
  property :file_language, predicate: RDF::DC11.language
  property :word_count, predicate: NFO.wordCount
  property :character_count, predicate: NFO.characterCount
  property :line_count, predicate: NFO.lineCount
  property :paragraph_count
  property :table_count
  property :graphics_count
  property :byte_order, predicate: RDF::URI('http://sweet.jpl.nasa.gov/2.2/reprDataFormat.owl#byteOrder')
  property :compression, predicate: RDF::URI('http://example.org/ns/mix/compressionScheme')
  property :color_space, predicate: EXIF.colorSpace
  property :profile_name, predicate: RDF::URI('http://example.org/ns/mix/colorProfileName')
  property :profile_version, predicate: RDF::URI('http://example.org/ns/mix/colorProfileVersion')
  property :orientation, predicate: EXIF.orientation
  property :color_map, predicate: RDF::URI('http://example.org/ns/mix/colorMap')
  property :image_producer, predicate: RDF::Vocab::MARCRelators.pht
  property :capture_device, predicate: EXIF.model
  property :scanning_software, predicate: EXIF.software
  property :exif_version, predicate: EXIF.exifVersion
  property :gps_timestamp, predicate: EXIF.gpsTimeStamp
  property :latitude, predicate: EXIF.gpsLatitude
  property :longitude, predicate: EXIF.gpsLongitude
  property :character_set
  property :markup_basis
  property :markup_language
  property :bit_depth, predicate: NFO.bitDepth
  property :channels, predicate: NFO.channels
  property :data_format, predicate: EBUCore.hasDataFormat
  property :offset
  property :frame_rate, predicate: NFO.frameRate
  property :duration, predicate: NFO.duration
  property :height, predicate: EXIF.imageLength
  property :width, predicate: EXIF.imageWidth
end
