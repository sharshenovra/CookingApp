import Foundation
import SnapKit
import youtube_ios_player_helper

class DetailedViewController: UIViewController{
    
    private lazy var contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height * 2)
    
    lazy var scrollView1: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.contentSize = contentSize
        view.backgroundColor = UIColor(red: 221 / 255, green: 156 / 255 , blue: 119 / 255, alpha: 0.5)
        view.frame = self.view.bounds
        return view
    }()
    
    lazy var view1: UIView = {
        let view = UIView()
        view.frame.size = contentSize
        view.backgroundColor = UIColor(red: 221 / 255, green: 156 / 255 , blue: 119 / 255, alpha: 0.5)
        return view
    }()
    
    lazy var nameLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var titleLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var requirementsLabel: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var youtubeView: YTPlayerView = {
        let view = YTPlayerView()
        return view
    }()
    
    lazy var step1Label: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var step1Image: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var step2Label: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var step2Image: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var step3Label: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var step3Image: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var step4Label: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var step4Image: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var step5Label: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var step5Image: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    lazy var step6Label: UILabel = {
        let view = UILabel()
        view.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        view.textAlignment = .center
        view.numberOfLines = 0
        view.textColor = .black
        view.adjustsFontSizeToFitWidth = true
        return view
    }()
    
    lazy var step6Image: UIImageView = {
        let view = UIImageView()
        view.contentMode = .scaleAspectFit
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSubViews()
    }
    
    private func setupSubViews(){
        
        view.addSubview(scrollView1)
        
        scrollView1.addSubview(view1)
        
        view1.addSubview(nameLabel)
        nameLabel.snp.makeConstraints { make in
            make.top.centerX.equalToSuperview()
        }
        
        view1.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(nameLabel.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view1.addSubview(requirementsLabel)
        requirementsLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view1.addSubview(youtubeView)
        youtubeView.snp.makeConstraints { make in
            make.height.equalTo(200)
            make.width.equalToSuperview().multipliedBy(0.8)
            make.centerX.equalToSuperview()
            make.top.equalTo(requirementsLabel.snp.bottom).offset(view.frame.height / 40)
        }
        
        view1.addSubview(step1Label)
        step1Label.snp.makeConstraints { make in
            make.top.equalTo(youtubeView.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view1.addSubview(step1Image)
        step1Image.snp.makeConstraints { make in
            make.top.equalTo(step1Label.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
        }
        
        view1.addSubview(step2Label)
        step2Label.snp.makeConstraints { make in
            make.top.equalTo(step1Image.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view1.addSubview(step2Image)
        step2Image.snp.makeConstraints { make in
            make.top.equalTo(step2Label.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
        }
        
        view1.addSubview(step3Label)
        step3Label.snp.makeConstraints { make in
            make.top.equalTo(step2Image.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view1.addSubview(step3Image)
        step3Image.snp.makeConstraints { make in
            make.top.equalTo(step3Label.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
        }
        
        view1.addSubview(step4Label)
        step4Label.snp.makeConstraints { make in
            make.top.equalTo(step3Image.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view1.addSubview(step4Image)
        step4Image.snp.makeConstraints { make in
            make.top.equalTo(step4Label.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
        }
        
        view1.addSubview(step5Label)
        step5Label.snp.makeConstraints { make in
            make.top.equalTo(step4Image.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view1.addSubview(step5Image)
        step5Image.snp.makeConstraints { make in
            make.top.equalTo(step5Label.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
        }
        
        view1.addSubview(step6Label)
        step6Label.snp.makeConstraints { make in
            make.top.equalTo(step5Image.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
            make.width.equalToSuperview()
        }
        
        view1.addSubview(step6Image)
        step6Image.snp.makeConstraints { make in
            make.top.equalTo(step6Label.snp.bottom).offset(view.frame.height / 40)
            make.centerX.equalToSuperview()
        }
    }
    
}
