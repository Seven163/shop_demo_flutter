import 'package:permission_handler/permission_handler.dart';

/// 权限申请相关方法
class PermUtils {
  /// 基础权限申请
  static Future initPermissions() async {
    await locationPerm();
    await storagePerm();
    await cameraPerm();
  }

  /// 存储权限申请
  static Future<bool> storagePerm() async {
    // 权限检查
    PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    if (permission != PermissionStatus.granted) {
      var permissions = await PermissionHandler()
          .requestPermissions([PermissionGroup.storage]);
      return permissions[PermissionGroup.storage] == PermissionStatus.granted;
    }
    return true;
  }

  /// 相册权限申请
  static Future<bool> cameraPerm() async {
    // 权限检查
    PermissionStatus permission =
        await PermissionHandler().checkPermissionStatus(PermissionGroup.camera);
    if (permission != PermissionStatus.granted) {
      var permissions = await PermissionHandler()
          .requestPermissions([PermissionGroup.camera]);
      return permissions[PermissionGroup.camera] == PermissionStatus.granted;
    }
    return true;
  }

  /// 定位权限GPS
  static Future<bool> locationPerm() async {
    PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.location);
    if (permission != PermissionStatus.granted) {
      var permissions = await PermissionHandler()
          .requestPermissions([PermissionGroup.location]);
      return permissions[PermissionGroup.location] == PermissionStatus.granted;
    }
    return true;
  }
}
