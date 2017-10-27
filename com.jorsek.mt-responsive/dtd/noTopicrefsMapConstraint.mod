<!ENTITY % title "title" >
<!ENTITY % topicmeta "topicmeta" >
<!ENTITY % anchor "anchor" >
<!ENTITY % data "data" >
<!ENTITY % data-about "data-about" >
<!ENTITY % navref "navref" >
<!ENTITY % reltable "reltable" >
<!ENTITY % mapref "mapref" >
<!ENTITY % keydef "keydef" >

<!ENTITY % data.elements.incl
  "%data; |
   %data-about;
  "
>

<!ENTITY categorymap-constraints "(categorymap notopicrefsMap-c)" >
<!ENTITY % categorymap.content
                       "((%title;)?,
                         (%topicmeta;)?,
                         (%anchor; |
                          %data.elements.incl; |
                          %navref; |
                          %reltable; |
                          %mapref; |
                          %keydef;)* )"
>
