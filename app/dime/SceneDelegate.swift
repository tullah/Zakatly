// SceneDelegate.swift
//
// Scene delegate for managing UI lifecycle and window configuration
// Created by Tariq Shafiq
//
// Copyright © 2024 Zakatly. All rights reserved.
//

import SwiftUI

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    @Environment(\.openURL) var openURL

    func scene(
        _: UIScene,
        willConnectTo _: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        if let shortcutItem = connectionOptions.shortcutItem {
            guard let url = URL(string: shortcutItem.type) else {
                return
            }

            openURL(url)
        }
    }

    func windowScene(
        _: UIWindowScene,
        performActionFor shortcutItem: UIApplicationShortcutItem,
        completionHandler: @escaping (Bool) -> Void
    ) {
        guard let url = URL(string: shortcutItem.type) else {
            completionHandler(false)
            return
        }

        openURL(url, completion: completionHandler)
    }
}
