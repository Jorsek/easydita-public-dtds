<?xml version="1.0" encoding="UTF-8"?>
<!-- ============================================================= -->
<!--                    HEADER                                     -->
<!-- ============================================================= -->
<!--  MODULE:    DITA Map Group Domain                             -->
<!--  VERSION:   1.2                                               -->
<!--  DATE:      November 2009                                     -->
<!--                                                               -->
<!-- ============================================================= -->
<!-- ============================================================= -->
<!--                    PUBLIC DOCUMENT TYPE DEFINITION            -->
<!--                    TYPICAL INVOCATION                         -->
<!--                                                               -->
<!--  Refer to this file by the following public identifier or an  -->
<!--       appropriate system identifier                           -->
<!-- PUBLIC "-//OASIS//ELEMENTS DITA Map Group Domain//EN"         -->
<!--       Delivered as file "mapGroup.mod"                             -->
<!-- ============================================================= -->
<!-- SYSTEM:     Darwin Information Typing Architecture (DITA)     -->
<!--                                                               -->
<!-- PURPOSE:    Define elements and specialization attributes     -->
<!--             for Map Group Domain                              -->
<!--                                                               -->
<!-- ORIGINAL CREATION DATE:                                       -->
<!--             March 2001                                        -->
<!--                                                               -->
<!--             (C) Copyright OASIS Open 2005, 2009.              -->
<!--             (C) Copyright IBM Corporation 2001, 2004.         -->
<!--             All Rights Reserved.                              -->
<!--                                                               -->
<!--  UPDATES:                                                     -->
<!--    2005.11.15 RDA: Corrected the "Delivered as" system ID     -->
<!--    2006.06.07 RDA: Make universal attributes universal        -->
<!--                      (DITA 1.1 proposal #12)                  -->
<!--    2007.12.01 EK:  Reformatted DTD modules for DITA 1.2        -->
<!--    2008.02.01 RDA: Added keydef element, keys attributes      -->
<!--    2008.02.12 RDA: Navtitle no longer required on topichead   -->
<!--    2008.02.13 RDA: Create .content and .attributes entities   -->
<!--    2010.09.20 RDA: Add copy-to to topichead                   -->
<!-- ============================================================= -->
<!--                                                               -->
<!--                                                               -->

<!-- ============================================================= -->
<!--                   ELEMENT NAME ENTITIES                       -->
<!-- ============================================================= -->

<!ENTITY % topichead   "topichead"                                   >
<!ENTITY % flattopicref "flattopicref"                               >
<!ENTITY % flattopicgroup  "flattopicgroup"                                  >
<!ENTITY % anchorref   "anchorref"                                   >
<!ENTITY % mapref      "mapref"                                      >
<!ENTITY % topicset    "topicset"                                    >
<!ENTITY % topicsetref "topicsetref"                                 >
<!ENTITY % keydef      "keydef"                                      >

<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!--                    LONG NAME: Topichead                       -->
<!ENTITY % topichead.content
                       "((%topicmeta;)?,
                         (%anchor; |
                          %data.elements.incl; |
                          %navref; |
                          %flattopicref;)*)"
>
<!ENTITY % topichead.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               %topicref-atts;
               %univ-atts;"
>
<!ELEMENT  topichead %topichead.content;>
<!ATTLIST  topichead %topichead.attributes;>

<!--                    LONG NAME: Flat Topic Reference                 -->
<!ENTITY % flattopicref.content
                        "((%topicmeta;)?,
                         (%anchor; |
                          %data.elements.incl; |
                          %navref; 
                          )*)"
>
<!ENTITY % flattopicref.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
             %topicref-atts;
               %univ-atts;"
>
<!ELEMENT  flattopicref %flattopicref.content;>
<!ATTLIST  flattopicref %flattopicref.attributes;>

<!--                    LONG NAME: Flat Topic Group                      -->
<!ENTITY % flattopicgroup.content
                       "((%topicmeta;)?,
                         (%anchor; |
                          %data.elements.incl; |
                          %navref; |
                          %flattopicref;)*)"
>
<!ENTITY % flattopicgroup.attributes
              "outputclass
                          CDATA
                                    #IMPLIED
               %topicref-atts;
               %univ-atts;"
>
<!ELEMENT  flattopicgroup %flattopicgroup.content;>
<!ATTLIST  flattopicgroup %flattopicgroup.attributes;>



<!--                    LONG NAME: Anchorref                       -->
<!ENTITY % anchorref.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %flattopicref;)*)"
>
<!ENTITY % anchorref.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               keyscope
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    'anchor'
               cascade
                          CDATA
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
                                    'ditamap'
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
               %univ-atts;"
>
<!ELEMENT  anchorref %anchorref.content;>
<!ATTLIST  anchorref %anchorref.attributes;>


<!--                    LONG NAME: Map reference                   -->
<!ENTITY % mapref.content
                       "((%topicmeta;)?,
                         (%data.elements.incl;)*)"
>
<!ENTITY % mapref.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               format
                          CDATA
                                    'ditamap'
               %topicref-atts-without-format;
               %univ-atts;"
>
<!ELEMENT  mapref %mapref.content;>
<!ATTLIST  mapref %mapref.attributes;>


<!--                    LONG NAME: Topicset                        -->
<!ENTITY % topicset.content
                       "((%topicmeta;)?,
                         (%anchor; |
                          %data.elements.incl; |
                          %navref; |
                          %flattopicref;)*)"
>
<!ENTITY % topicset.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               keyscope
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
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
               id
                          NMTOKEN
                                    #REQUIRED
               %conref-atts;
               %select-atts;
               %localization-atts;"
>
<!ELEMENT  topicset %topicset.content;>
<!ATTLIST  topicset %topicset.attributes;>


<!--                    LONG NAME: Topicsetref                     -->
<!ENTITY % topicsetref.content
                       "((%topicmeta;)?,
                         (%data.elements.incl; |
                          %flattopicref;)*)"
>
<!ENTITY % topicsetref.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #IMPLIED
               keyscope
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    #IMPLIED
               type
                          CDATA
                                    'topicset'
               cascade
                          CDATA
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
                                    'ditamap'
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
               %univ-atts;"
>
<!ELEMENT  topicsetref %topicsetref.content;>
<!ATTLIST  topicsetref %topicsetref.attributes;>


<!--                    LONG NAME: Keydef                          -->
<!ENTITY % keydef.content
                       "((%topicmeta;)?,
                         (%anchor; |
                          %data.elements.incl; |
                          %navref; |
                          %flattopicref;)*)"
>
<!ENTITY % keydef.attributes
              "navtitle
                          CDATA
                                    #IMPLIED
               href
                          CDATA
                                    #IMPLIED
               keyref
                          CDATA
                                    #IMPLIED
               keys
                          CDATA
                                    #REQUIRED
               keyscope
                          CDATA
                                    #IMPLIED
               query
                          CDATA
                                    #IMPLIED
               copy-to
                          CDATA
                                    #IMPLIED
               outputclass
                          CDATA
                                    #IMPLIED
               collection-type
                          (choice |
                           family |
                           sequence |
                           unordered |
                           -dita-use-conref-target)
                                    #IMPLIED
               processing-role
                          (normal |
                           resource-only |
                           -dita-use-conref-target)
                                    'resource-only'
               type
                          CDATA
                                    #IMPLIED
               cascade
                          CDATA
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
               %univ-atts;"
>
<!ELEMENT  keydef %keydef.content;>
<!ATTLIST  keydef %keydef.attributes;>



<!-- ============================================================= -->
<!--             SPECIALIZATION ATTRIBUTE DECLARATIONS             -->
<!-- ============================================================= -->
  
<!ATTLIST  anchorref    %global-atts;  class CDATA "+ map/topicref mapgroup-d/anchorref guideMapGroup/anchorref">
<!ATTLIST  keydef       %global-atts;  class CDATA "+ map/topicref mapgroup-d/keydef guideMapGroup/keydef">
<!ATTLIST  mapref       %global-atts;  class CDATA "+ map/topicref mapgroup-d/mapref guideMapGroup/mapref">
<!ATTLIST  flattopicref %global-atts;  class CDATA "+ map/topicref mapgroup-d/topicref guideMapGroup-d/flattopicref"  >
<!ATTLIST  flattopicgroup   %global-atts;  class CDATA "+ map/topicref mapgroup-d/topicref guideMapGroup-d/flattopicgroup"     >
<!ATTLIST  topichead    %global-atts;  class CDATA "+ map/topicref mapgroup-d/topichead guideMapGroup/topicref">
<!ATTLIST  topicset     %global-atts;  class CDATA "+ map/topicref mapgroup-d/topicset guideMapGroup/topicset">
<!ATTLIST  topicsetref  %global-atts;  class CDATA "+ map/topicref mapgroup-d/topicsetref guideMapGroup/topicsetref">

<!-- ================== End of DITA Map Group Domain ==================== -->
 