#!/bin/zsh

VERSION="24.12.9"

# Update ROOT_URL
ROOT_URL=""
if [[ "$VERSION" == 7* ]]; then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900005862/com/sap/mobile/platform/client/hcp/sdk/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 6* ]]; then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900005307/com/sap/mobile/platform/client/hcp/sdk/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 8* ]]; then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900006843/com/sap/mobile/platform/client/hcp/sdk/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 9* ]]; then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/ios"
#ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900006345/com/sap/mobile/platform/client/hcp/sdk/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 10* ]]; then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008062/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 24.4* ]]; then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73554900100900008403/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 24.8* || "$VERSION" == 24.12* || "$VERSION" == 25.4* ]]; then
  ROOT_URL="https://rbsc.repositories.cloud.sap/nexus3/repository/maven73555000100900007915/ios"
  sed "s#let root.*#let root = \"$ROOT_URL\"#" Package.swift > tmp.swift
  mv tmp.swift Package.swift
else
  echo "ERROR !!!!"
fi

# Update swift-tools-version
if [[ "$VERSION" == 9* ]]; then
  sed "s/.*swift-tools-version.*/\/\/ swift-tools-version:5.5/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 10* || "$VERSION" == 24.4* || "$VERSION" == 24.8* ]]; then
  sed "s/.*swift-tools-version.*/\/\/ swift-tools-version:5.9/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 24.12* || "$VERSION" == 25.4* ]]; then
  sed "s/.*swift-tools-version.*/\/\/ swift-tools-version:6.0/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
else
  sed "s/.*swift-tools-version.*/\/\/ swift-tools-version:5.3/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
fi

# Update version
sed "s#let version.*#let version = \"$VERSION\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

# Update platforms
if [[ "$VERSION" == 7* || "$VERSION" == 8* ]]; then
  sed "s/.*platforms.*/    platforms: [.iOS(.v14)],/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 9* ]]; then
  sed "s/.*platforms.*/    platforms: [.iOS(.v15)],/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 10* || "$VERSION" == 24.4* || "$VERSION" == 24.8* ]]; then
  sed "s/.*platforms.*/    platforms: [.iOS(.v16)],/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 24.12* || "$VERSION" == 25.4* ]]; then
  sed "s/.*platforms.*/    platforms: [.iOS(.v17)],/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
elif [[ "$VERSION" == 6* ]]; then
  sed "s/.*platforms.*/    platforms: [.iOS(.v13)],/" Package.swift > tmp.swift
  mv tmp.swift Package.swift
else
  echo "ERROR !!!!"
fi

# Compute checksums
echo "Downloading: $ROOT_URL/SAPCommon/$VERSION/SAPCommon-$VERSION-Release.xcframework.zip"
curl -n -L -f $ROOT_URL/SAPCommon/$VERSION/SAPCommon-$VERSION-Release.xcframework.zip --output SAPCommon.zip
CHECKSUM=$(swift package compute-checksum SAPCommon.zip)
sed "s#let sapCommonChecksum.*#let sapCommonChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/SAPFiori/$VERSION/SAPFiori-$VERSION-Release.xcframework.zip"
curl -n -L -f $ROOT_URL/SAPFiori/$VERSION/SAPFiori-$VERSION-Release.xcframework.zip --output SAPFiori.zip
CHECKSUM=$(swift package compute-checksum SAPFiori.zip)
sed "s#let sapFioriChecksum.*#let sapFioriChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/SAPFioriFlows/$VERSION/SAPFioriFlows-$VERSION-Release.xcframework.zip"
curl -n -L -f $ROOT_URL/SAPFioriFlows/$VERSION/SAPFioriFlows-$VERSION-Release.xcframework.zip --output SAPFioriFlows.zip
CHECKSUM=$(swift package compute-checksum SAPFioriFlows.zip)
sed "s#let sapFioriFlowsChecksum.*#let sapFioriFlowsChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/SAPFoundation/$VERSION/SAPFoundation-$VERSION-Release.xcframework.zip"
curl -n -L -f $ROOT_URL/SAPFoundation/$VERSION/SAPFoundation-$VERSION-Release.xcframework.zip --output SAPFoundation.zip
CHECKSUM=$(swift package compute-checksum SAPFoundation.zip)
sed "s#let sapFoundationChecksum.*#let sapFoundationChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/SAPOData/$VERSION/SAPOData-$VERSION-Release.xcframework.zip"
curl -n -L -f $ROOT_URL/SAPOData/$VERSION/SAPOData-$VERSION-Release.xcframework.zip --output SAPOData.zip
CHECKSUM=$(swift package compute-checksum SAPOData.zip)
sed "s#let sapODataChecksum.*#let sapODataChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/SAPOfflineOData/$VERSION/SAPOfflineOData-$VERSION-Release.xcframework.zip"
curl -n -L -f $ROOT_URL/SAPOfflineOData/$VERSION/SAPOfflineOData-$VERSION-Release.xcframework.zip --output SAPOfflineOData.zip
CHECKSUM=$(swift package compute-checksum SAPOfflineOData.zip)
sed "s#let sapOfflineODataChecksum.*#let sapOfflineODataChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

echo "Downloading: $ROOT_URL/SAPML/$VERSION/SAPML-$VERSION-Release.xcframework.zip"
curl -n -L -f $ROOT_URL/SAPML/$VERSION/SAPML-$VERSION-Release.xcframework.zip --output SAPML.zip
CHECKSUM=$(swift package compute-checksum SAPML.zip)
sed "s#let sapMLChecksum.*#let sapMLChecksum = \"$CHECKSUM\"#" Package.swift > tmp.swift
mv tmp.swift Package.swift

# Clean up
rm *.zip
