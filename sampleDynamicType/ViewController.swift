//
//  ViewController.swift
//  sampleDynamicType
//
//  Created by satoutakeshi on 2015/07/14.
//  Copyright (c) 2015年 satoutakeshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelForHeadline:    UILabel!
    @IBOutlet weak var labelForSubhead:     UILabel!
    @IBOutlet weak var labelForBody:        UILabel!
    @IBOutlet weak var labelForCaption1:    UILabel!
    @IBOutlet weak var labelForCaption2:    UILabel!
    @IBOutlet weak var labelForFootnote:    UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //通知センターから文字サイズ変更を受信する
        NSNotificationCenter.defaultCenter().addObserver(self,
            selector: "fontSizeChanged:",
            name: UIContentSizeCategoryDidChangeNotification,
            object: nil)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        showPointSize()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //フォントサイズを更新
    func fontSizeChanged(notifycation: NSNotification){
        labelForHeadline.font   =   UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
        labelForSubhead.font    =   UIFont.preferredFontForTextStyle(UIFontTextStyleSubheadline)
        labelForBody.font       =   UIFont.preferredFontForTextStyle(UIFontTextStyleBody)
        labelForCaption1.font   =   UIFont.preferredFontForTextStyle(UIFontTextStyleCaption1)
        labelForCaption2.font   =   UIFont.preferredFontForTextStyle(UIFontTextStyleCaption2)
        labelForFootnote.font   =   UIFont.preferredFontForTextStyle(UIFontTextStyleFootnote)
        
        
        showPointSize()
        
    }
    
    func showPointSize()
    {
        //フォントサイズを画面へ表示
        labelForHeadline.text   =   "Headline: \(labelForHeadline.font.pointSize)"
        labelForSubhead.text    =   "Subheadline: \(labelForSubhead.font.pointSize)"
        labelForBody.text       =   "Body: \(labelForBody.font.pointSize)"
        labelForCaption1.text   =   "Caption 1: \(labelForCaption1.font.pointSize)"
        labelForCaption2.text   =   "Caption 2: \(labelForCaption2.font.pointSize)"
        labelForFootnote.text   =   "Footnote: \(labelForFootnote.font.pointSize)"
        
    }

}

