import UIKit
import SnapKit

class PageCell: UICollectionViewCell {
    
    private lazy var mainContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        addSubview(view)
        return view
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLayout() {
        
    }
    
}
