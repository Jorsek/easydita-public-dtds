<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!-- Darwin Information Typing Architecture (DITA) Version 1.3     -->
<!-- OASIS Standard                                           -->
<!-- 17 December 2015                                           -->
<!-- Copyright (c) OASIS Open 2015. All rights reserved.           -->
<!-- Source: http://docs.oasis-open.org/dita/dita/v1.3/os/part0-overview/dita-v1.3-os-part0-overview.html                                -->
<!--                                                               -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Category Map                                          -->
<!--  VERSION:   1.3                                               -->
<!--  DATE:      March 2014                                        -->
<!--                                                               -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an
      appropriate system identifier
PUBLIC "-//OASIS//ELEMENTS DITA Category Map//EN"
      Delivered as file "categoryMap.mod"                                  -->

<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Declaring the elements and specialization         -->
<!--             attributes for the DITA Maps                      -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             March 2001                                        -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2005.11.15 RDA: Corrected public ID in the comment above   -->
<!--    2005.11.15 RDA: Removed old declaration for topicreftypes  -->
<!--                      entity                                   -->
<!--    2006.06.06 RDA: Removed default locktitle="yes" from       -->
<!--                      %topicref-atts-no-toc;                   -->
<!--                    Remove keyword declaration                 -->
<!--                    Add reference to commonElements            -->
<!--                    Add title element to map                   -->
<!--                    Add data element to topicmeta              -->
<!--                    Remove shortdesc declaration               -->
<!--    2006.06.07 RDA: Make universal attributes universal        -->
<!--                      (DITA 1.1 proposal #12)                  -->
<!--    2006.06.14 RDA: Add dir attribute to localization-atts     -->
<!--    2006.06.14 RDA: Add outputclass attribute to most elemetns -->
<!--    2006.11.30 RDA: Add -dita-use-conref-target to enumerated  -->
<!--                      attributes                               -->
<!--    2006.11.30 RDA: Remove #FIXED from DITAArchVersion         -->
<!--    2007.12.01 EK:  Reformatted DTD modules for DITA 1.2       -->
<!--    2008.01.28 RDA: Added <metadata> to <topicmeta>            -->
<!--    2008.01.30 RDA: Replace @conref defn. with %conref-atts;   -->
<!--    2008.02.01 RDA: Added keys attributes, more keyref attrs   -->
<!--    2008.02.12 RDA: Expand relcolspec content model            -->
<!--    2008.02.12 RDA: Modify imbeds to use specific 1.2 version  -->
<!--    2008.02.12 RDA: Add navtitle to topicmeta                  -->
<!--    2008.02.13 RDA: Create .content and .attributes entities   -->
<!--    2010.09.20 RDA: Bring linktext content in sync with topic  -->
<!-- ============================================================= -->

<!-- ============================================================= -->
<!--                   ARCHITECTURE ENTITIES                       -->
<!-- ============================================================= -->

<!-- default namespace prefix for DITAArchVersion attribute can be
     overridden through predefinition in the document type shell   -->
<!ENTITY % DITAArchNSPrefix
  "ditaarch"
>

<!-- must be instanced on each topic type                          -->
<!ENTITY % arch-atts
             "xmlns:%DITAArchNSPrefix;
                        CDATA
                                  #FIXED 'http://dita.oasis-open.org/architecture/2005/'
              %DITAArchNSPrefix;:DITAArchVersion
                         CDATA
                                  '1.3'
  "
>



<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % categorymap "categorymap"                                 >
<!ENTITY % navref      "navref"                                      >
<!ENTITY % topicref    "topicref"                                    >
<!ENTITY % anchor      "anchor"                                      >
<!ENTITY % reltable    "reltable"                                    >
<!ENTITY % relheader   "relheader"                                   >
<!ENTITY % relcolspec  "relcolspec"                                  >
<!ENTITY % relrow      "relrow"                                      >
<!ENTITY % relcell     "relcell"                                     >
<!ENTITY % topicmeta   "topicmeta"                                   >
<!ENTITY % shortdesc   "shortdesc"                                   >
<!ENTITY % linktext    "linktext"                                    >
<!ENTITY % searchtitle "searchtitle"                                 >
<!ENTITY % ux-window   "ux-window"                                   >

<!-- ============================================================= -->
<!--                    COMMON ATTLIST SETS                        -->
<!-- ============================================================= -->

<!ENTITY % topicref-atts
              "collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               locktitle
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               print
                          (no |
                           printonly |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               search
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               chunk
                          CDATA
                                    #IMPLIED
               keyscope
                          CDATA
                                    #IMPLIED"
                                    
>
<!ENTITY % topicref-atts-no-toc
              "collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    'resource-only'
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               locktitle
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               print
                          (no |
                           printonly |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               search
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               chunk
                          CDATA
                                    #IMPLIED
               keyscope
                          CDATA
                                    #IMPLIED"
>
<!ENTITY % topicref-atts-no-toc-no-keyscope
              "collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               locktitle
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               format
                          CDATA
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    'no'
               print
                          (no |
                           printonly |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               search
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               chunk
                          CDATA
                                    #IMPLIED"
>
<!ENTITY % topicref-atts-without-format
              "collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               scope
                          (external |
                           local |
                           peer |
                           -dita-use-conref-target)
                                    #IMPLIED
               locktitle
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               linking
                          (none |
                           normal |
                           sourceonly |
                           targetonly |
                           -dita-use-conref-target)
                                    #IMPLIED
               toc
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               print
                          (no |
                           printonly |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               search
                          (no |
                           yes |
                           -dita-use-conref-target)
                                    #IMPLIED
               chunk
                          CDATA
                                    #IMPLIED
               keyscope
                          CDATA
                                    #IMPLIED"
>


<!-- ============================================================= -->
<!--                    DOMAINS ATTRIBUTE OVERRIDE                 -->
<!-- ============================================================= -->

<!ENTITY included-domains
  ""
>

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Category Map                    -->
<!ENTITY % categorymap.content
                       "((%title;)?,
                         (%topicmeta;)?,
                         (%anchor; |
                          %data.elements.incl; |
                          %navref; |
                          %reltable; |
                          %topicref;)* )"
>

<!ENTITY % categorymap.attributes
              "title
                          CDATA
                                    #IMPLIED
               id
                          ID
                                    #IMPLIED
               %conref-atts;
               anchorref
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               %localization-atts;
               %topicref-atts;
               %select-atts;"
>
<!ELEMENT  categorymap %categorymap.content;>
<!ATTLIST  categorymap %categorymap.attributes;
                 %arch-atts;
                 domains
                        CDATA
                                  "&included-domains;"
>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->

<!ATTLIST  categorymap  %global-atts;  class CDATA "- map/map categorymap/categorymap "  >
<!ATTLIST  navref       %global-atts;  class CDATA "- map/navref categorymap/navref"       >
<!ATTLIST  topicref     %global-atts;  class CDATA "- map/topicref categorymap/topicref"     >
<!ATTLIST  anchor       %global-atts;  class CDATA "- map/anchor categorymap/anchor"       >
<!ATTLIST  reltable     %global-atts;  class CDATA "- map/reltable categorymap/reltable"     >
<!ATTLIST  relheader    %global-atts;  class CDATA "- map/relheader categorymap/relheader"    >
<!ATTLIST  relcolspec   %global-atts;  class CDATA "- map/relcolspec categorymap/relcolspec"   >
<!ATTLIST  relrow       %global-atts;  class CDATA "- map/relrow categorymap/relrow"       >
<!ATTLIST  relcell      %global-atts;  class CDATA "- map/relcell categorymap/relcell"      >
<!ATTLIST  topicmeta    %global-atts;  class CDATA "- map/topicmeta categorymap/topicmeta"    >
<!ATTLIST  linktext     %global-atts;  class CDATA "- map/linktext categorymap/linktext"     >
<!ATTLIST  searchtitle  %global-atts;  class CDATA "- map/searchtitle categorymap/searchtitle"  >
<!ATTLIST  shortdesc    %global-atts;  class CDATA "- map/shortdesc categorymap/shortdesc"    >
<!ATTLIST  ux-window    %global-atts;  class CDATA "- map/ux-window categorymap/ux-window"    >

<!-- ================== End of DITA Map Module ==================== -->
