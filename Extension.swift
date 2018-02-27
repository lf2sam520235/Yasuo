//
//  Extension.swift
//  BitcoinBlockChainMinimalist
//
//  Created by 陳囿豪 on 2017/07/11.
//  UpData by 陳囿豪 on 2017/08/20.
//  Copyright © 2017年 yasuoyuhao. All rights reserved.
//  1.4 Version

import UIKit


//MARK:  NSAttributedString

extension NSAttributedString {
    
    static func enterN(ofSize: CGFloat) -> NSAttributedString {
        
        let enterNAttributedString = NSAttributedString(string: "\n\n", attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: ofSize)])
        
        return enterNAttributedString
    }
    
    static func addNSAttributedString(string: String, ofSize: CGFloat, color: UIColor?, bold: Bool =  false) -> NSAttributedString {
        
        if bold {
            
            if let color = color {
                
                let attributedString = NSAttributedString(string: string, attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: ofSize), NSAttributedStringKey.foregroundColor: color])
                
                return attributedString
                
            } else {
                
                let attributedString = NSAttributedString(string: string, attributes: [NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: ofSize)])
                return attributedString
            }
            
        } else {
            
            if let color = color {
                
                let attributedString = NSAttributedString(string: string, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: ofSize), NSAttributedStringKey.foregroundColor: color])
                
                return attributedString
                
            } else {
                
                let attributedString = NSAttributedString(string: string, attributes: [NSAttributedStringKey.font: UIFont.systemFont(ofSize: ofSize)])
                return attributedString
            }
        }
    }
}

//MARK: - NSMutableAttributedString

extension NSMutableAttributedString {
    
    static func creativeNSMutableAttributedString() -> NSMutableAttributedString {
        
        let attributedString = NSMutableAttributedString.init()
        return attributedString
    }
    
    
    static func paragraphSpaceLine(attributedText: NSMutableAttributedString, paragraphStyle: NSMutableParagraphStyle) -> NSMutableAttributedString {
        
        attributedText.addAttribute(NSAttributedStringKey.paragraphStyle, value: paragraphStyle, range: .init(location: 0, length: (attributedText.length)))
        return attributedText
    }
}

//MARK: - String

extension String {
    
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        return boundingBox.height
    }
}

//MARK: - NSAttributedString

extension NSAttributedString {
    
    func heightWithConstrainedWidth(width: CGFloat) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: NSStringDrawingOptions.usesLineFragmentOrigin, context: nil)
        return ceil(boundingBox.height)
    }
    
}

//MARK: - UIColor

extension UIColor {
    
    open class var faceBookBlue : UIColor {
        return UIColor(red: 59/255, green: 89/255, blue: 152/255, alpha: 1)
    }
    
    open class var minimalGray : UIColor {
        return UIColor(red: 38/255, green: 45/255, blue: 52/255, alpha: 1)
    }
    
    open class var minimalLightGray : UIColor {
        return UIColor(red: 71/255, green: 79/255, blue: 87/255, alpha: 1)
    }
    
    open class var minimalBrown : UIColor {
        return UIColor(red: 45/255, green: 45/255, blue: 45/255, alpha: 1)
    }
    
    open class var hightLightWhite : UIColor {
        return UIColor(red: 247/255, green: 249/255, blue: 242/255, alpha: 1)
    }
    
    open class var lightPurpleRed : UIColor {
        return UIColor.rgb(red: 194, green: 42, blue: 130)
    }
    
    open class var aboutMeGreen : UIColor {
        return UIColor(red: 20/255, green: 155/255, blue: 124/255, alpha: 1)
    }
    
    open class var arizonaStateUniversityRed : UIColor {
        return UIColor(red: 133/255, green: 0/255, blue: 39/255, alpha: 1)
    }
    
    open class var aetnaRed : UIColor {
        return UIColor(red: 197/255, green: 0/255, blue: 72/255, alpha: 1)
    }
    
    open class var alphabetRed : UIColor {
        return UIColor(red: 229/255, green: 0/255, blue: 28/255, alpha: 1)
    }
    
    open class var tiffanyBlue : UIColor {
        return UIColor(red: 10/255, green: 186/255, blue: 181/255, alpha: 1)
    }
    
    open class var minimalBlockChainIconTop : UIColor {
        return UIColor.rgb(red: 0, green: 219, blue: 222)
    }
    
    open class var minimalBlockChainIconBottom : UIColor {
        return UIColor.rgb(red: 252, green: 0, blue: 255)
    }
    
    open class var lifeGuideOfGameBrightBlue : UIColor {
        return UIColor.rgb(red: 0, green: 201, blue: 255)
    }
    
    open class var lifeGuideOfGameBrightGreen : UIColor {
        return UIColor.rgb(red: 146, green: 254, blue: 157)
    }
    
    open class var overcastBlueColor : UIColor {
        return UIColor(red: 0, green: 187/255, blue: 204/255, alpha: 1.0)
    }
    
    open class var lifeGuideOfGameRed : UIColor {
        return UIColor.rgb(red: 187, green: 61, blue: 65)
    }
    
    open class var minimalBlockPink : UIColor {
        return UIColor.rgb(red: 250, green: 112, blue: 154)
    }
    
    open class var minimalBlockOrange : UIColor {
        return UIColor.rgb(red: 252, green: 173, blue: 109)
    }
    
    
    
    
    static func rgb(red : CGFloat , green : CGFloat , blue :CGFloat ) -> UIColor {
        return UIColor(red: red/255 , green: green/255 , blue: blue/255 , alpha: 1)
    }
    
    static func randomColor() -> UIColor {
        let red = CGFloat(randomDoubleforColor())
        let green = CGFloat(randomDoubleforColor())
        let blue = CGFloat(randomDoubleforColor())
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    static func randomDoubleforColor() -> Double {
        
        let random = arc4random_uniform(10000)
        let double = Double(random)/Double(10000)
        return double
    }
    
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}


//MARK: - UIView

extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor? , left : NSLayoutXAxisAnchor? , bottom: NSLayoutYAxisAnchor?, right : NSLayoutXAxisAnchor? ,paddingTop: CGFloat , paddingLeft :CGFloat , paddingBottom :CGFloat , paddingRight: CGFloat , width : CGFloat , height : CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func downLoadDataFromURL(url: URL , completion: @escaping (Data) -> Void ) {
        
        URLSession.shared.dataTask(with: url) { (data, response, err) in
            
            if let err = err {
                print("Failed to fetch posts photo image :" , err)
            }
            
            guard let data = data else { return }
            
            completion(data)
            
            }.resume()
    }
    
    func addGradient(colorTop: UIColor, colorBotton: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        let colorTop = colorTop
        let colorBotton = colorBotton
        gradientLayer.frame = self.bounds
        gradientLayer.colors = [colorTop.cgColor, colorBotton.cgColor]
        
        self.layer.addSublayer(gradientLayer)
    }
}

//MARK: - NSDate

extension NSDate {
    
    static func secondsToHoursMinutesSeconds (seconds : Int) -> (Int , Int, Int, Int) {
        return (seconds / 3600 / 24 , (seconds / 3600) % 24, (seconds % 3600) / 60, (seconds % 3600) % 60)
    }
}


//MARK: - Date

extension Date {
    func timeAgoDisplay() -> String {
        let secondsAgo = Int(Date().timeIntervalSince(self))
        
        let minute = 60
        let hour = 60 * minute
        let day = 24 * hour
        let week = 7 * day
        let month = 4 * week
        
        let quotient: Int
        let unit: String
        if secondsAgo < minute {
            quotient = secondsAgo
            unit = "秒"
        } else if secondsAgo < hour {
            quotient = secondsAgo / minute
            unit = "分"
        } else if secondsAgo < day {
            quotient = secondsAgo / hour
            unit = "小時"
        } else if secondsAgo < week {
            quotient = secondsAgo / day
            unit = "天"
        } else if secondsAgo < month {
            quotient = secondsAgo / week
            unit = "星期"
        } else {
            quotient = secondsAgo / month
            unit = "月"
        }
        
        return "\(quotient) \(unit)\(quotient == 1 ? "" : "s") ago"
        
    }
}

//MARK: - UITableView


//MARK: - UILabel

class UILabelCanPasteboard: UILabel {
    //system method
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addLongPressHandler()
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addLongPressHandler()
    }
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(copy(_:)) {
            return true
        }else{
            return false
        }
    }
    override func copy(_ sender: Any?) {
        let pBoard = UIPasteboard.general
        pBoard.string = self.text
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    required init?(coder aDecoder: NSCoder) {
        //实现父类的该方法
        super.init(coder: aDecoder)
    }
    
    // MARK: - private method
    func addLongPressHandler() {
        //UILabel默认不接收事件，添加touch事件
        self.isUserInteractionEnabled = true
        let longPressGesture = UILongPressGestureRecognizer.init(target: self, action: #selector(longPressAction))
        self.addGestureRecognizer(longPressGesture)
    }
    @objc func longPressAction() {
        
        self.becomeFirstResponder()
        let copyItem = UIMenuItem(title: "複製", action: #selector(copy(_:)))
        let menu = UIMenuController.shared
        menu.menuItems = [copyItem]
        if menu.isMenuVisible {
            return
        }
        menu.setTargetRect(bounds, in: self)
        menu.setMenuVisible(true, animated: true)
    }
}

//MARK: - UIImageView

class UIImageViewPasteboard: UIImageView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sharedInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        sharedInit()
    }
    
    func sharedInit() {
        isUserInteractionEnabled = true
        addGestureRecognizer(UILongPressGestureRecognizer(target: self,
                                                          action: #selector(showMenu)))
    }
    
    @objc func showMenu(sender: AnyObject?) {
        becomeFirstResponder()
        let menu = UIMenuController.shared
        if !menu.isMenuVisible {
            menu.setTargetRect(bounds, in: self)
            menu.setMenuVisible(true, animated: true)
        }
    }
    
    //复制
    override func copy(_ sender: (Any)?) {
        let board = UIPasteboard.general
        board.image = self.image
        let menu = UIMenuController.shared
        menu.setMenuVisible(false, animated: true)
    }
    
    //粘贴
    override func paste(_ sender: (Any)?) {
        let board = UIPasteboard.general
        self.image = board.image
        let menu = UIMenuController.shared
        menu.setMenuVisible(false, animated: true)
    }
    
    override var canBecomeFirstResponder: Bool {
        return true
    }
    
    override func canPerformAction(_ action: Selector, withSender sender: Any?) -> Bool {
        if action == #selector(UIResponderStandardEditActions.copy(_:)) {
            return true
        }else if action == #selector(UIResponderStandardEditActions.paste(_:)) {
            return true
        }
        return false
    }
    
}

//MARK: - UIImage

extension UIImage {
    
    static func createPictureFromView(view: UIView) -> UIImage? {
        
        UIGraphicsBeginImageContext(view.frame.size)
        guard let graphicsGetCurrentContext = UIGraphicsGetCurrentContext() else { return nil }
        view.layer.render(in: graphicsGetCurrentContext )
        guard let image = UIGraphicsGetImageFromCurrentImageContext() else { return nil }
        UIGraphicsEndImageContext()
        guard let cgImage = image.cgImage else { return nil }
        
        return UIImage(cgImage: cgImage)
    }
    
    func scale(newWidth: CGFloat) -> UIImage {
        
        if self.size.width == newWidth {
            return self
        }
        
        let scaleFactor = newWidth / self.size.width
        let newHeight = self.size.height * scaleFactor
        let newSize = CGSize(width: newWidth, height: newHeight)
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0);
        self.draw(in: CGRect(x: 0, y: 0, width: newWidth, height: newHeight))
        
        let newImage: UIImage? = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage ?? self
    }
}

//MARK: - GradientView

class GradientView: UIView {
    
    private var gradientLayer = CAGradientLayer()
    open var vertical: Bool = false
    open var topColor = UIColor.clear
    open var bottomColor = UIColor.clear
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        
        super.draw(rect)
        // Drawing code
        
        //fill view with gradient layer
        gradientLayer.frame = self.bounds
        
        //style and insert layer if not already inserted
        if gradientLayer.superlayer == nil {
            
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = vertical ? CGPoint(x: 0, y: 1) : CGPoint(x: 1, y: 0)
            gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
            gradientLayer.locations = [0.0, 1.0]
            
            self.layer.insertSublayer(gradientLayer, at: 0)
        }
    }
    
}
