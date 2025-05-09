import Flutter
import UIKit

/**
 * AppDelegate 是 iOS 应用程序的代理类
 * 继承自 FlutterAppDelegate，用于处理应用程序生命周期事件
 * 负责初始化 Flutter 引擎和注册插件
 */
@main
@objc class AppDelegate: FlutterAppDelegate {
  /**
   * 应用程序启动时的回调方法
   * @param application UIApplication 实例
   * @param launchOptions 启动选项字典
   * @return 返回应用程序是否成功启动
   */
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    // 注册所有 Flutter 插件
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
