#项目的SCHEMENAME
SCHEMENAME=StoneRoom
#项目的分支
BRANCHNAME=master
ADHOCExportOptionsPlist=./ADHOCExportOptionsPlist.plist
AppStoreExportOptionsPlist=./AppStoreExportOptionsPlist.plist
EnterpriseExportOptionsPlist=./EnterpriseExportOptionsPlist.plist

ADHOCExportOptionsPlist=${ADHOCExportOptionsPlist}
AppStoreExportOptionsPlist=${AppStoreExportOptionsPlist}
EnterpriseExportOptionsPlist=${EnterpriseExportOptionsPlist}

DATE=`date +%Y%m%d_%H%M`
SOURCEPATH=`pwd`/StoneRoom
ARCHIVEPATH=$SOURCEPATH/archive/$SCHEMENAME.xcarchive
IPAPATH=$SOURCEPATH/AutoBuildIPA/$BRANCHNAME/$DATE

echo "==================== 准备打包 ===================="
xcodebuild archive -workspace $SOURCEPATH/StoneRoom.xcworkspace \
-scheme $SCHEMENAME \
-configuration Release \
-archivePath ${ARCHIVEPATH} \
CODE_SIGN_IDENTITY="iPhone Distribution: wang yifan (HU34BCTTPG)" \
PRODUCT_BUNDLE_IDENTIFIER="com.StoneRoom.developfan"

echo "==================== 准备导出 ===================="
xcodebuild -exportArchive \
-archivePath ${ARCHIVEPATH} \
-exportOptionsPlist $ADHOCExportOptionsPlist \
-exportPath ${IPAPATH} \


