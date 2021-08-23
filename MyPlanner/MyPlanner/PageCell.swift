import UIKit
import SnapKit
import FSCalendar

extension UIViewController {
    func topMostViewController() -> UIViewController {

        if let presented = self.presentedViewController {
            return presented.topMostViewController()
        }

        if let navigation = self as? UINavigationController {
            return navigation.visibleViewController?.topMostViewController() ?? navigation
        }

        if let tab = self as? UITabBarController {
            return tab.selectedViewController?.topMostViewController() ?? tab
    }

        return self
    }
}

//TODO: Find better sollution for finding topMostViewController (without warning on keyWindow)
extension UIApplication {
    func topMostViewController() -> UIViewController? {
        return self.keyWindow?.rootViewController?.topMostViewController()
    }
}

class PageCell: UICollectionViewCell {
    
    // MARK: - Views
    private let calendarContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemPink
        return view
    }()
    
    private let dateView: DayView = {
        let view = DayView()
        view.backgroundColor = .white
        return view
    }()
    
    private let calendarView: FSCalendar = {
        let calendar = FSCalendar()
        calendar.backgroundColor = .white
        calendar.headerHeight = 0
        calendar.firstWeekday = 2
//        TODO: localization option if is necessary
//        calendar.locale = Locale(identifier: "lt")
        
        let currentViewController = UIApplication.shared.topMostViewController()
        
        calendar.delegate = currentViewController as? FSCalendarDelegate
        calendar.dataSource = currentViewController as? FSCalendarDataSource
        
        let appearance = calendar.appearance
        appearance.weekdayTextColor = .systemGray
        appearance.weekdayFont = UIFont(name: "Helvetica Neue", size: 12)
        appearance.todayColor = .orange
        appearance.todaySelectionColor = .orange
        appearance.selectionColor = .systemGray3
        
        calendar.scrollEnabled = false
        return calendar
    }()
    
    private let tableView: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        return view
    }()
    
    // MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Setup Layout
private extension PageCell {
    
    func setupLayout() {
        addSubview(calendarContainerView)
        calendarContainerView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.top.equalToSuperview()
            make.width.equalToSuperview().multipliedBy(0.5)
            make.height.equalTo(250)
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
