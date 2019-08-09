#!/bin/bash 
 
converter=./IfcConvert0.5.0/IfcConvert.exe
source=./EB-Bygget_170320.ifc

$converter --use-element-guids -- $source $(dirname $source)/$(basename $source .ifc).$i.dae \

# Batch konvertering​  #​  for i in ../3dmodeller/UnionEiendom/*ifc ; do $converter $i --use-element-guids 
$(dirname $i)/$(basename $i ifc)dae ; done
#ksporter hver IFC entitetstype som egen 3D modell
fctypes=( \​  IfcAnnotation IfcAssembly IfcBeam IfcBuildingElementPart IfcBuildingStorey IfcCovering 
IfcCurtainWall \​  IfcGrid IfcGroup IfcMember IfcOpeningElement IfcPlate IfcRamp IfcRoof IfcSite IfcSlab 
IfcSpace \​  IfcStair IfcSystem IfcWall IfcWallStandardCase) 

for i in ${ifctypes[*]}; do \​ 
$converter --use-element-guids --include=entities $i -- $source $(dirname $source)/$(basename $source .ifc).$i.dae \​
done​
