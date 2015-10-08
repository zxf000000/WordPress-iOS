import Foundation


extension UIAlertController
{
    public func addCancelActionWithTitle(title: String?, handler: ((UIAlertAction) -> Void)?) -> UIAlertAction {
        return addActionWithTitle(title, style: .Cancel, handler: handler)
    }
    
    public func addDestructiveActionWithTitle(title: String?, handler: ((UIAlertAction) -> Void)?) -> UIAlertAction {
        return addActionWithTitle(title, style: .Destructive, handler: handler)
    }

    public func addDefaultActionWithTitle(title: String?, handler: ((UIAlertAction) -> Void)?) -> UIAlertAction {
        return addActionWithTitle(title, style: .Default, handler: handler)
    }
    
    public func addActionWithTitle(title: String?, style: UIAlertActionStyle, handler: ((UIAlertAction) -> Void)?) -> UIAlertAction {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        addAction(action)
        
        return action
    }
    
    public func presentFromRootViewController() {
        // Note:
        // This method is required because the presenter ViewController must be visible, and we've got several
        // flows in which the VC that triggers the alert, might not be visible anymore.
        //
        let rootViewController = UIApplication.sharedApplication().delegate?.window??.rootViewController
        rootViewController?.presentViewController(self, animated: true, completion: nil)
    }
}
