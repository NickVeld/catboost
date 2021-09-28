LIBRARY()

LICENSE(BSD-3-Clause)

VERSION(1.0)

LICENSE_TEXTS(.yandex_meta/licenses.list.txt)

ORIGINAL_SOURCE(https://www.netlib.org/blas/)



NO_COMPILER_WARNINGS()

IF (HAVE_MKL)
    PEERDIR(
        contrib/libs/intel/mkl
    )
ELSE()
    CFLAGS(
        -DADD_
        -DNO_BLAS_WRAP
    )
    PEERDIR(
        ADDINCL contrib/libs/libf2c
    )
    ADDINCLSELF()
    SRCS(
        caxpy.c
        ccopy.c
        cdotc.c
        cdotu.c
        cgbmv.c
        cgemm.c
        cgemv.c
        cgerc.c
        cgeru.c
        chbmv.c
        chemm.c
        chemv.c
        cher.c
        cher2.c
        cher2k.c
        cherk.c
        chpmv.c
        chpr.c
        chpr2.c
        crotg.c
        cscal.c
        csrot.c
        csscal.c
        cswap.c
        csymm.c
        csyr2k.c
        csyrk.c
        ctbmv.c
        ctbsv.c
        ctpmv.c
        ctpsv.c
        ctrmm.c
        ctrmv.c
        ctrsm.c
        ctrsv.c
        dasum.c
        daxpy.c
        dcabs1.c
        dcopy.c
        ddot.c
        dgbmv.c
        dgemm.c
        dgemv.c
        dger.c
        dnrm2.c
        drot.c
        drotg.c
        drotm.c
        drotmg.c
        dsbmv.c
        dscal.c
        dsdot.c
        dspmv.c
        dspr.c
        dspr2.c
        dswap.c
        dsymm.c
        dsymv.c
        dsyr.c
        dsyr2.c
        dsyr2k.c
        dsyrk.c
        dtbmv.c
        dtbsv.c
        dtpmv.c
        dtpsv.c
        dtrmm.c
        dtrmv.c
        dtrsm.c
        dtrsv.c
        dzasum.c
        dznrm2.c
        icamax.c
        idamax.c
        isamax.c
        izamax.c
        lsame.c
        sasum.c
        saxpy.c
        scabs1.c
        scasum.c
        scnrm2.c
        scopy.c
        sdot.c
        sdsdot.c
        sgbmv.c
        sgemm.c
        sgemv.c
        sger.c
        snrm2.c
        srot.c
        srotg.c
        srotm.c
        srotmg.c
        ssbmv.c
        sscal.c
        sspmv.c
        sspr.c
        sspr2.c
        sswap.c
        ssymm.c
        ssymv.c
        ssyr.c
        ssyr2.c
        ssyr2k.c
        ssyrk.c
        stbmv.c
        stbsv.c
        stpmv.c
        stpsv.c
        strmm.c
        strmv.c
        strsm.c
        strsv.c
        xerbla.c
        xerbla_array.c
        zaxpy.c
        zcopy.c
        zdotc.c
        zdotu.c
        zdrot.c
        zdscal.c
        zgbmv.c
        zgemm.c
        zgemv.c
        zgerc.c
        zgeru.c
        zhbmv.c
        zhemm.c
        zhemv.c
        zher.c
        zher2.c
        zher2k.c
        zherk.c
        zhpmv.c
        zhpr.c
        zhpr2.c
        zrotg.c
        zscal.c
        zswap.c
        zsymm.c
        zsyr2k.c
        zsyrk.c
        ztbmv.c
        ztbsv.c
        ztpmv.c
        ztpsv.c
        ztrmm.c
        ztrmv.c
        ztrsm.c
        ztrsv.c
        cblas_interface/cblas_caxpy.c
        cblas_interface/cblas_ccopy.c
        cblas_interface/cblas_cdotc_sub.c
        cblas_interface/cblas_cdotu_sub.c
        cblas_interface/cblas_cgbmv.c
        cblas_interface/cblas_cgemm.c
        cblas_interface/cblas_cgemv.c
        cblas_interface/cblas_cgerc.c
        cblas_interface/cblas_cgeru.c
        cblas_interface/cblas_chbmv.c
        cblas_interface/cblas_chemm.c
        cblas_interface/cblas_chemv.c
        cblas_interface/cblas_cher.c
        cblas_interface/cblas_cher2.c
        cblas_interface/cblas_cher2k.c
        cblas_interface/cblas_cherk.c
        cblas_interface/cblas_chpmv.c
        cblas_interface/cblas_chpr.c
        cblas_interface/cblas_chpr2.c
        cblas_interface/cblas_cscal.c
        cblas_interface/cblas_csscal.c
        cblas_interface/cblas_cswap.c
        cblas_interface/cblas_csymm.c
        cblas_interface/cblas_csyr2k.c
        cblas_interface/cblas_csyrk.c
        cblas_interface/cblas_ctbmv.c
        cblas_interface/cblas_ctbsv.c
        cblas_interface/cblas_ctpmv.c
        cblas_interface/cblas_ctpsv.c
        cblas_interface/cblas_ctrmm.c
        cblas_interface/cblas_ctrmv.c
        cblas_interface/cblas_ctrsm.c
        cblas_interface/cblas_ctrsv.c
        cblas_interface/cblas_dasum.c
        cblas_interface/cblas_daxpy.c
        cblas_interface/cblas_dcopy.c
        cblas_interface/cblas_ddot.c
        cblas_interface/cblas_dgbmv.c
        cblas_interface/cblas_dgemm.c
        cblas_interface/cblas_dgemv.c
        cblas_interface/cblas_dger.c
        cblas_interface/cblas_dnrm2.c
        cblas_interface/cblas_drot.c
        cblas_interface/cblas_drotg.c
        cblas_interface/cblas_drotm.c
        cblas_interface/cblas_drotmg.c
        cblas_interface/cblas_dsbmv.c
        cblas_interface/cblas_dscal.c
        cblas_interface/cblas_dsdot.c
        cblas_interface/cblas_dspmv.c
        cblas_interface/cblas_dspr.c
        cblas_interface/cblas_dspr2.c
        cblas_interface/cblas_dswap.c
        cblas_interface/cblas_dsymm.c
        cblas_interface/cblas_dsymv.c
        cblas_interface/cblas_dsyr.c
        cblas_interface/cblas_dsyr2.c
        cblas_interface/cblas_dsyr2k.c
        cblas_interface/cblas_dsyrk.c
        cblas_interface/cblas_dtbmv.c
        cblas_interface/cblas_dtbsv.c
        cblas_interface/cblas_dtpmv.c
        cblas_interface/cblas_dtpsv.c
        cblas_interface/cblas_dtrmm.c
        cblas_interface/cblas_dtrmv.c
        cblas_interface/cblas_dtrsm.c
        cblas_interface/cblas_dtrsv.c
        cblas_interface/cblas_dzasum.c
        cblas_interface/cblas_dznrm2.c
        cblas_interface/cblas_globals.c
        cblas_interface/cblas_icamax.c
        cblas_interface/cblas_idamax.c
        cblas_interface/cblas_isamax.c
        cblas_interface/cblas_izamax.c
        cblas_interface/cblas_sasum.c
        cblas_interface/cblas_saxpy.c
        cblas_interface/cblas_scasum.c
        cblas_interface/cblas_scnrm2.c
        cblas_interface/cblas_scopy.c
        cblas_interface/cblas_sdot.c
        cblas_interface/cblas_sdsdot.c
        cblas_interface/cblas_sgbmv.c
        cblas_interface/cblas_sgemm.c
        cblas_interface/cblas_sgemv.c
        cblas_interface/cblas_sger.c
        cblas_interface/cblas_snrm2.c
        cblas_interface/cblas_srot.c
        cblas_interface/cblas_srotg.c
        cblas_interface/cblas_srotm.c
        cblas_interface/cblas_srotmg.c
        cblas_interface/cblas_ssbmv.c
        cblas_interface/cblas_sscal.c
        cblas_interface/cblas_sspmv.c
        cblas_interface/cblas_sspr.c
        cblas_interface/cblas_sspr2.c
        cblas_interface/cblas_sswap.c
        cblas_interface/cblas_ssymm.c
        cblas_interface/cblas_ssymv.c
        cblas_interface/cblas_ssyr.c
        cblas_interface/cblas_ssyr2.c
        cblas_interface/cblas_ssyr2k.c
        cblas_interface/cblas_ssyrk.c
        cblas_interface/cblas_stbmv.c
        cblas_interface/cblas_stbsv.c
        cblas_interface/cblas_stpmv.c
        cblas_interface/cblas_stpsv.c
        cblas_interface/cblas_strmm.c
        cblas_interface/cblas_strmv.c
        cblas_interface/cblas_strsm.c
        cblas_interface/cblas_strsv.c
        cblas_interface/cblas_xerbla.c
        cblas_interface/cblas_zaxpy.c
        cblas_interface/cblas_zcopy.c
        cblas_interface/cblas_zdotc_sub.c
        cblas_interface/cblas_zdotu_sub.c
        cblas_interface/cblas_zdscal.c
        cblas_interface/cblas_zgbmv.c
        cblas_interface/cblas_zgemm.c
        cblas_interface/cblas_zgemv.c
        cblas_interface/cblas_zgerc.c
        cblas_interface/cblas_zgeru.c
        cblas_interface/cblas_zhbmv.c
        cblas_interface/cblas_zhemm.c
        cblas_interface/cblas_zhemv.c
        cblas_interface/cblas_zher.c
        cblas_interface/cblas_zher2.c
        cblas_interface/cblas_zher2k.c
        cblas_interface/cblas_zherk.c
        cblas_interface/cblas_zhpmv.c
        cblas_interface/cblas_zhpr.c
        cblas_interface/cblas_zhpr2.c
        cblas_interface/cblas_zscal.c
        cblas_interface/cblas_zswap.c
        cblas_interface/cblas_zsymm.c
        cblas_interface/cblas_zsyr2k.c
        cblas_interface/cblas_zsyrk.c
        cblas_interface/cblas_ztbmv.c
        cblas_interface/cblas_ztbsv.c
        cblas_interface/cblas_ztpmv.c
        cblas_interface/cblas_ztpsv.c
        cblas_interface/cblas_ztrmm.c
        cblas_interface/cblas_ztrmv.c
        cblas_interface/cblas_ztrsm.c
        cblas_interface/cblas_ztrsv.c
        cblas_interface/cdotcsub.c
        cblas_interface/cdotusub.c
        cblas_interface/dasumsub.c
        cblas_interface/ddotsub.c
        cblas_interface/dnrm2sub.c
        cblas_interface/dsdotsub.c
        cblas_interface/dzasumsub.c
        cblas_interface/dznrm2sub.c
        cblas_interface/icamaxsub.c
        cblas_interface/idamaxsub.c
        cblas_interface/isamaxsub.c
        cblas_interface/izamaxsub.c
        cblas_interface/sasumsub.c
        cblas_interface/scasumsub.c
        cblas_interface/scnrm2sub.c
        cblas_interface/sdotsub.c
        cblas_interface/sdsdotsub.c
        cblas_interface/snrm2sub.c
        cblas_interface/zdotcsub.c
        cblas_interface/zdotusub.c
    )
ENDIF()

END()
