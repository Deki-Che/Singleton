# Singleton单例模式

<h5>实现单例方法</h5>
下面提供两种比较好的单例写法。
（要注意：不管哪种写法都要注意将init()方法私有化。因为在Swift中，所有对象的构造器默认都是 public，
需要重写init让其成为私有的，防止其他对象使用这个类的默认的‘()‘初始化方法来创建对象。）

方法一：</br>


class AppManager {

    private static let _sharedInstance = AppManager()
    
    class func getSharedInstance() -> AppManager {
        return _sharedInstance
    }
     
    private init() {} // 私有化init方法
}
 
//使用方式
AppManager.getSharedInstance()


方法二：</br>


class AppManager { </br>

    static let sharedInstance = AppManager()
     
    private init() {} // 私有化init方法
}
 
//使用方式
AppManager.sharedInstance

<h5>为什么要私有化初始化方法</h5>
因为只有init()是私有的，才能防止其他对象通过默认构造函数直接创建这个类对象，确保你的单例是真正的独一无二。 
因为在Swift中，所有对象的构造器默认都是public，所以需要重写你的init让其成为私有的。

本知识来源���自：http://www.bubuko.com/infodetail-1118509.html
