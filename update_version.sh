#!/bin/zsh

VERSION="7.0.4"

# Update ROOT_URL
ROOT_URL=""
if [[ "$VERSION" == 7* ]]; then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900005862/com/sap/mobile/platform/client/hcp/sdk/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 6* ]];
then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307/com/sap/mobile/platform/client/hcp/sdk/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
else
  echo "ERROR !!!!"
fi

# Update version
sed "s#let version.*#let version = \"$VERSION\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

# Update platforms
if [[ "$VERSION" == 7* ]]; then
  sed "s/.*platforms.*/    platforms: [.iOS(.v14)],/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 6* ]];
then
  sed "s/.*platforms.*/    platforms: [.iOS(.v13)],/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
else
  echo "ERROR !!!!"
fi

# Compute checksums
echo "Downloading: $ROOT_URL/foundation/SAPCommon/$VERSION/SAPCommon-$VERSION-Release-xcframework.zip"
curl -n -L -f $ROOT_URL/foundation/SAPCommon/$VERSION/SAPCommon-$VERSION-Release-xcframework.zip --output SAPCommon.zip
CHECKSUM=$(swift package compute-checksum SAPCommon.zip)
sed "s#let sapCommonChecksum.*#let sapCommonChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/uireuse/SAPFiori/$VERSION/SAPFiori-$VERSION-Release-xcframework.zip"
curl -n -L -f $ROOT_URL/uireuse/SAPFiori/$VERSION/SAPFiori-$VERSION-Release-xcframework.zip --output SAPFiori.zip
CHECKSUM=$(swift package compute-checksum SAPFiori.zip)
sed "s#let sapFioriChecksum.*#let sapFioriChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/flows/SAPFioriFlows/$VERSION/SAPFioriFlows-$VERSION-Release-xcframework.zip"
curl -n -L -f $ROOT_URL/flows/SAPFioriFlows/$VERSION/SAPFioriFlows-$VERSION-Release-xcframework.zip --output SAPFioriFlows.zip
CHECKSUM=$(swift package compute-checksum SAPFioriFlows.zip)
sed "s#let sapFioriFlowsChecksum.*#let sapFioriFlowsChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/foundation/SAPFoundation/$VERSION/SAPFoundation-$VERSION-Release-xcframework.zip"
curl -n -L -f $ROOT_URL/foundation/SAPFoundation/$VERSION/SAPFoundation-$VERSION-Release-xcframework.zip --output SAPFoundation.zip
CHECKSUM=$(swift package compute-checksum SAPFoundation.zip)
sed "s#let sapFoundationChecksum.*#let sapFoundationChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/foundation/SAPOData/$VERSION/SAPOData-$VERSION-Release-xcframework.zip"
curl -n -L -f $ROOT_URL/foundation/SAPOData/$VERSION/SAPOData-$VERSION-Release-xcframework.zip --output SAPOData.zip
CHECKSUM=$(swift package compute-checksum SAPOData.zip)
sed "s#let sapODataChecksum.*#let sapODataChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/foundation/SAPOfflineOData/$VERSION/SAPOfflineOData-$VERSION-Release-xcframework.zip"
curl -n -L -f $ROOT_URL/foundation/SAPOfflineOData/$VERSION/SAPOfflineOData-$VERSION-Release-xcframework.zip --output SAPOfflineOData.zip
CHECKSUM=$(swift package compute-checksum SAPOfflineOData.zip)
sed "s#let sapOfflineODataChecksum.*#let sapOfflineODataChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/uireuse/SAPML/$VERSION/SAPML-$VERSION-Release-xcframework.zip"
curl -n -L -f $ROOT_URL/uireuse/SAPML/$VERSION/SAPML-$VERSION-Release-xcframework.zip --output SAPML.zip
CHECKSUM=$(swift package compute-checksum SAPML.zip)
sed "s#let sapMLChecksum.*#let sapMLChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

# Clean up
rm *.zip
