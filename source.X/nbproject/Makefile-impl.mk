#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a pre- and a post- target defined where you can add customization code.
#
# This makefile implements macros and targets common to all configurations.
#
# NOCDDL


# Building and Cleaning subprojects are done by default, but can be controlled with the SUB
# macro. If SUB=no, subprojects will not be built or cleaned. The following macro
# statements set BUILD_SUB-CONF and CLEAN_SUB-CONF to .build-reqprojects-conf
# and .clean-reqprojects-conf unless SUB has the value 'no'
SUB_no=NO
SUBPROJECTS=${SUB_${SUB}}
BUILD_SUBPROJECTS_=.build-subprojects
BUILD_SUBPROJECTS_NO=
BUILD_SUBPROJECTS=${BUILD_SUBPROJECTS_${SUBPROJECTS}}
CLEAN_SUBPROJECTS_=.clean-subprojects
CLEAN_SUBPROJECTS_NO=
CLEAN_SUBPROJECTS=${CLEAN_SUBPROJECTS_${SUBPROJECTS}}


# Project Name
PROJECTNAME=source.X

# Active Configuration
DEFAULTCONF=XC8_PIC12F609
CONF=${DEFAULTCONF}

# All Configurations
ALLCONFS=XC8_PIC12F609 HT_PIC12F609 XC8_PIC12F675 HT_PIC12F675 XC8_PIC12F1840 HT_PIC12F1840 XC8_PIC12F529T39A XC8_PIC12LF1840T48A HT_PIC12LF1840T48A 


# build
.build-impl: .build-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .build-conf


# clean
.clean-impl: .clean-pre
	${MAKE} -f nbproject/Makefile-${CONF}.mk SUBPROJECTS=${SUBPROJECTS} .clean-conf

# clobber
.clobber-impl: .clobber-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12F609 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=HT_PIC12F609 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12F675 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=HT_PIC12F675 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12F1840 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=HT_PIC12F1840 clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12F529T39A clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12LF1840T48A clean
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=HT_PIC12LF1840T48A clean



# all
.all-impl: .all-pre .depcheck-impl
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12F609 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=HT_PIC12F609 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12F675 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=HT_PIC12F675 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12F1840 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=HT_PIC12F1840 build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12F529T39A build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=XC8_PIC12LF1840T48A build
	    ${MAKE} SUBPROJECTS=${SUBPROJECTS} CONF=HT_PIC12LF1840T48A build



# dependency checking support
.depcheck-impl:
#	@echo "# This code depends on make tool being used" >.dep.inc
#	@if [ -n "${MAKE_VERSION}" ]; then \
#	    echo "DEPFILES=\$$(wildcard \$$(addsuffix .d, \$${OBJECTFILES}))" >>.dep.inc; \
#	    echo "ifneq (\$${DEPFILES},)" >>.dep.inc; \
#	    echo "include \$${DEPFILES}" >>.dep.inc; \
#	    echo "endif" >>.dep.inc; \
#	else \
#	    echo ".KEEP_STATE:" >>.dep.inc; \
#	    echo ".KEEP_STATE_FILE:.make.state.\$${CONF}" >>.dep.inc; \
#	fi
