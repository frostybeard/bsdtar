LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := bsdtar
LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := \
	tar/bsdtar.c \
	tar/cmdline.c \
	tar/getdate.c \
	tar/read.c \
	tar/subst.c \
	tar/tree.c \
	tar/util.c \
	tar/write.c \

LOCAL_SRC_FILES += \
	libarchive_fe/err.c \
	libarchive_fe/line_reader.c \
	libarchive_fe/matching.c \
	libarchive_fe/pathmatch.c \

LOCAL_SRC_FILES += \
	libarchive/archive_acl.c \
	libarchive/archive_check_magic.c \
	libarchive/archive_crypto.c \
	libarchive/archive_entry.c \
	libarchive/archive_entry_copy_stat.c \
	libarchive/archive_entry_link_resolver.c \
	libarchive/archive_entry_sparse.c \
	libarchive/archive_entry_stat.c \
	libarchive/archive_entry_strmode.c \
	libarchive/archive_entry_xattr.c \
	libarchive/archive_options.c \
	libarchive/archive_ppmd7.c \
	libarchive/archive_rb.c \
	libarchive/archive_read.c \
	libarchive/archive_read_data_into_fd.c \
	libarchive/archive_read_disk_entry_from_file.c \
	libarchive/archive_read_disk_posix.c \
	libarchive/archive_read_disk_set_standard_lookup.c \
	libarchive/archive_read_extract.c \
	libarchive/archive_read_open_fd.c \
	libarchive/archive_read_open_file.c \
	libarchive/archive_read_open_filename.c \
	libarchive/archive_read_open_memory.c \
	libarchive/archive_read_set_options.c \
	libarchive/archive_read_support_filter_all.c \
	libarchive/archive_read_support_filter_bzip2.c \
	libarchive/archive_read_support_filter_compress.c \
	libarchive/archive_read_support_filter_gzip.c \
	libarchive/archive_read_support_filter_none.c \
	libarchive/archive_read_support_filter_program.c \
	libarchive/archive_read_support_filter_rpm.c \
	libarchive/archive_read_support_filter_uu.c \
	libarchive/archive_read_support_filter_xz.c \
	libarchive/archive_read_support_format_7zip.c \
	libarchive/archive_read_support_format_all.c \
	libarchive/archive_read_support_format_ar.c \
	libarchive/archive_read_support_format_by_code.c \
	libarchive/archive_read_support_format_cab.c \
	libarchive/archive_read_support_format_cpio.c \
	libarchive/archive_read_support_format_empty.c \
	libarchive/archive_read_support_format_iso9660.c \
	libarchive/archive_read_support_format_lha.c \
	libarchive/archive_read_support_format_mtree.c \
	libarchive/archive_read_support_format_rar.c \
	libarchive/archive_read_support_format_raw.c \
	libarchive/archive_read_support_format_tar.c \
	libarchive/archive_read_support_format_xar.c \
	libarchive/archive_read_support_format_zip.c \
	libarchive/archive_string.c \
	libarchive/archive_string_sprintf.c \
	libarchive/archive_util.c \
	libarchive/archive_virtual.c \
	libarchive/archive_write.c \
	libarchive/archive_write_add_filter_bzip2.c \
	libarchive/archive_write_add_filter_compress.c \
	libarchive/archive_write_add_filter_gzip.c \
	libarchive/archive_write_add_filter_none.c \
	libarchive/archive_write_add_filter_program.c \
	libarchive/archive_write_add_filter_xz.c \
	libarchive/archive_write_disk_posix.c \
	libarchive/archive_write_disk_set_standard_lookup.c \
	libarchive/archive_write_open_fd.c \
	libarchive/archive_write_open_file.c \
	libarchive/archive_write_open_filename.c \
	libarchive/archive_write_open_memory.c \
	libarchive/archive_write_set_format.c \
	libarchive/archive_write_set_format_7zip.c \
	libarchive/archive_write_set_format_ar.c \
	libarchive/archive_write_set_format_by_name.c \
	libarchive/archive_write_set_format_cpio.c \
	libarchive/archive_write_set_format_cpio_newc.c \
	libarchive/archive_write_set_format_gnutar.c \
	libarchive/archive_write_set_format_iso9660.c \
	libarchive/archive_write_set_format_mtree.c \
	libarchive/archive_write_set_format_pax.c \
	libarchive/archive_write_set_format_shar.c \
	libarchive/archive_write_set_format_ustar.c \
	libarchive/archive_write_set_format_xar.c \
	libarchive/archive_write_set_format_zip.c \
	libarchive/archive_write_set_options.c \
	libarchive/filter_fork.c \

LOCAL_SRC_FILES += android/mbtowc.c

LOCAL_CFLAGS := -DPLATFORM_CONFIG_H=\"android/config.h\"
LOCAL_C_INCLUDES:= $(LOCAL_PATH)/libarchive $(LOCAL_PATH)/libarchive_fe
LOCAL_C_INCLUDES += external/zlib

LOCAL_SHARED_LIBRARIES += libz

include $(BUILD_EXECUTABLE)

