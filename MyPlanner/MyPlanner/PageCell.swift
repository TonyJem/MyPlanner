import UIKit
import SnapKit

class PageCell: UICollectionViewCell {
    
    private let calendarContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        return view
    }()
    
    private let dateView: UIView = {
        let view = UIView()
        view.backgroundColor = .cyan
        return view
    }()
    
    private let calendarView: UIView = {
        let view = UIView()
        view.backgroundColor = .brown
        return view
    }()
    
    private let tableView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
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
        addSubview(calendarContainerView)
        calendarContainerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalTo(200)
        }
        
        calendarContainerView.addSubview(dateView)
        dateView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.bottom.equalToSuperview()
        }
        
        calendarContainerView.addSubview(calendarView)
        calendarView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.trailing.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.bottom.equalToSuperview()
        }
        
        addSubview(tableView)
        tableView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalTo(calendarContainerView.snp.bottom).offset(10)
            make.width.equalTo(calendarContainerView.snp.width)
            make.bottom.equalToSuperview()
        }
    }
    
}
