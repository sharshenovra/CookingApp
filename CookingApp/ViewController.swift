import UIKit
import SnapKit
import Kingfisher
import youtube_ios_player_helper

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var collectionView: UICollectionView?
    
    var deserts: [Deserts] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return  deserts.count
        }

        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCVC.identifier, for: indexPath) as! CustomCVC

            let url = URL(string: deserts[indexPath.row].imageUrl ?? "")
            
            cell.configure(label: deserts[indexPath.row].name!, image: url!)
            
            return cell
        }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let rootVC = DetailedViewController()
        navigationController?.pushViewController(rootVC, animated: true)
        rootVC.title = deserts[indexPath.row].name
        rootVC.nameLabel.text = deserts[indexPath.row].name
        rootVC.titleLabel.text = deserts[indexPath.row].title
        rootVC.requirementsLabel.text = deserts[indexPath.row].requirements
        rootVC.step1Label.text = deserts[indexPath.row].step1
        rootVC.step2Label.text = deserts[indexPath.row].step2
        rootVC.step3Label.text = deserts[indexPath.row].step3
        rootVC.step4Label.text = deserts[indexPath.row].step4
        rootVC.step5Label.text = deserts[indexPath.row].step5
        rootVC.step6Label.text = deserts[indexPath.row].step6
        rootVC.step1Image.kf.setImage(with: URL(string: deserts[indexPath.row].step1image ?? ""))
        rootVC.step2Image.kf.setImage(with: URL(string: deserts[indexPath.row].step2image ?? ""))
        rootVC.step3Image.kf.setImage(with: URL(string: deserts[indexPath.row].step3image ?? ""))
        rootVC.step4Image.kf.setImage(with: URL(string: deserts[indexPath.row].step4image ?? ""))
        rootVC.step5Image.kf.setImage(with: URL(string: deserts[indexPath.row].step5image ?? ""))
        rootVC.step6Image.kf.setImage(with: URL(string: deserts[indexPath.row].step6image ?? ""))
        rootVC.youtubeView.load(withVideoId: deserts[indexPath.row].videoUrl!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupDeserts()
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        
        guard let collectionView = collectionView else {
            return
        }
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(CustomCVC.self, forCellWithReuseIdentifier: CustomCVC.identifier)
        
        view.addSubview(collectionView)
        collectionView.frame = view.bounds
        collectionView.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview()
        }
        
    }
    
    func setupDeserts(){
           deserts.append(Deserts(name: "Творожно-банановый \nдесерт", imageUrl: "https://img1.russianfood.com/dycontent/images_upl/240/sm_239528.jpg", time: 10, title: "Приготовим нежный и сладкий творожно-банановый десерт, который чудесно подходит как для легкого завтрака, так и для романтического ужина.", requirements: "Творог мягкий - 200 г \n Йогурт без добавок - 100 г \n Мед - 1 ст. л. \nБанан - 2 шт. \nШоколад тертый", videoUrl: "VLH4aH71p54", step1: "Подготовить продукты для творожно-бананового десерта.", step1image: "https://img1.russianfood.com/dycontent/images_upl/240/sm_239542.jpg", step2: "1,5 банана очистить, поломать на куски и отправить в миску вместе с йогуртом и творогом.", step2image: "https://img1.russianfood.com/dycontent/images_upl/240/sm_239543.jpg", step3: "Взбить погружным блендером на средней скорости.", step3image: "https://img1.russianfood.com/dycontent/images_upl/240/sm_239544.jpg", step4: "Добавить ложку меда, продолжая взбивать еще несколько минут. Должен получится воздушный, густой крем.", step4image: "https://img1.russianfood.com/dycontent/images_upl/240/sm_239545.jpg", step5: "Готовый десерт разложить в креманки, прослаивая оставшимися бананами, которые предварительно нужно нарезать на кружочки.", step5image: "https://img1.russianfood.com/dycontent/images_upl/240/sm_239547.jpg", step6: "Сверху украсить кусочками бананов и тертым шоколадом. Творожно-банановый десерт готов. Приятного аппетита!", step6image: "https://img1.russianfood.com/dycontent/images_upl/240/sm_239546.jpg"))
        deserts.append(Deserts(name: "Рулет Баунти \n(без выпечки)", imageUrl: "https://img1.russianfood.com/dycontent/images_upl/70/sm_69629.jpg", time: 70, title: "Рулет Баунти - это очень простой в приготовлении рулет без выпечки, напоминающий по вкусу одноимённый батончик. Рекомендую попробовать.", requirements: "Для теста: \nПеченье магазинное, не сухое (сахарное, юбилейное и т.п.) - 300 г \n Какао-порошок - 3 ст. ложки \nСахар - 0,5 стакана (по вкусу)\nВода (кипяток) - 0,5 стакана\nДля крема:\nМасло сливочное, комнатной температуры - 150 г\nСахарная пудра - 100 г (по вкусу)\nКокосовая стружка - 40 г", videoUrl: "", step1: "Печенье измельчить при помощи блендера или мясорубки в мелкую крошку.\nДобавить к печенью порошок какао. Перемешать.", step1image: "https://img1.russianfood.com/dycontent/images_upl/70/sm_69630.jpg", step2: "Полстакана сахара растворить в половине стакана кипятка. Остудить.\nПолученный сироп влить в сухую смесь.", step2image: "https://img1.russianfood.com/dycontent/images_upl/70/sm_69631.jpg", step3: "Приготовить крем. Для этого размягчённое до комнатной температуры сливочное масло соединить с сахарной пудрой и кокосовой стружкой. Хорошо перемешать до однородности.", step3image: "https://img1.russianfood.com/dycontent/images_upl/70/sm_69633.jpg", step4: "Тесто из печенья раскатать на пищевой плёнке до желаемой толщины.\nЧем тоньше будет раскатанный корж, тем больше получится витков на срезе рулета. Я раскатала пласт толщиной примерно 3 мм.", step4image: "https://img1.russianfood.com/dycontent/images_upl/70/sm_69634.jpg", step5: "Пласт покрыть масляным кремом, равномерно распределяя его по всей поверхности.", step5image: "https://img1.russianfood.com/dycontent/images_upl/70/sm_69635.jpg", step6: "Затем корж с кремом аккуратно свернуть рулетом.\nРулет завернуть в пищевую плёнку и убрать в морозилку на 30-40 минут.", step6image: "https://img1.russianfood.com/dycontent/images_upl/70/sm_69636.jpg"))
        deserts.append(Deserts(name: "Сметанный торт", imageUrl: "https://img1.russianfood.com/dycontent/images_upl/26/sm_25304.jpg", time: 60, title: "Очень простой и вкусный сметанный торт, из серии на скорую руку.", requirements: "Для теста:\nСметана - 1 стакан\nМука - 2 стакана\nСахар - 0,75 стакана\nСода - 0,25 ч.л.\nСоль - 0,25 ч.л.\nДля крема:\nСметана жирная- 1,5 стакана\nСахар - 0,5 стакана\nВанильный сахар - 0,5 ч.л.\nЦедра лимона (по желанию) - 1 ч.л.", videoUrl: "", step1: "Разогреть духовку до 200-220 градусов. Просеять муку. С одного лимона на мелкой терке снять цедру.", step1image: "", step2: "В большой миске перемешать сметану, сахар и соль. Всыпать муку и соду, замесить тесто.", step2image: "", step3: "Разделить готовое тесто на 8 равных частей. Из каждой части скалкой раскатать круг.", step3image: "", step4: "Противень смазать растительным маслом. Выложить коржи по очереди на подготовленный противень. Выпекать примерно 3-5 минут.", step4image: "", step5: "Когда коржи горячие, прямо на противне вырезать из них одинаковые круги (например, под размер крышки). Обрезки собрать и раздавить скалкой в крошку.", step5image: "", step6: "Приготовить сметанный крем для торта. Для этого взбить сметану с сахаром, цедрой лимона и ванильным сахаром.\n\nКогда коржи остынут, выложить первый корж на большое блюдо, смазать кремом, накрыть сверху вторым коржом, смазать его кремом и т.д. Последний корж обильно посыпать крошкой.\n\nУкрасить сметанный торт по желанию и поставить в холодильник на 3-4 часа. Когда торт пропитается кремом, он станет очень многослойным, нежным и мягким.", step6image: ""))
        deserts.append(Deserts(name: "Классический чизкейк", imageUrl: "https://img1.russianfood.com/dycontent/images_upl/7/sm_6275.jpg", time: 0, title: "Рецепт классического чизкейка можно использовать как основу для приготовления разновидностей этого лакомства.", requirements: "Для коржа:\nМасло сливочное (растопленное) - 5 ст. л.\nКрекеры - 200 г\nСахар - 1/4 стакана\nСоль - 1/4 ч. л.\nДля начинки:\nСливочный сыр (комнатной температуры) - 1 кг\nЛимонная цедра - 1 ч. л.\nЛимонный сок - 1 ст. л.\nСоль - 1/2 ч. л.\nЯйца крупные - 4 шт.\nСметана - 1 стакан\nСахар - 1 стакан или по вкусу", videoUrl: "", step1: "Предварительно разогреть духовку до 180 градусов. Смазать маслом разъемную форму для торта. Блендером хорошо измельчить печенье. Добавить растаявшее масло, сахар и соль, перемешать. Выложить полученную массу в форму, придавливая пальцами, равномерно распределить по дну и краям. Выпекать 12-15 минут. Охладить на решетке. Огонь снизить до 150 градусов.", step1image: "https://img1.russianfood.com/dycontent/images_upl/7/sm_6276.jpg", step2: "В чайнике вскипятить воду. Подготовить начинку. Миксером на средней скорости взбить сливочный сыр. Постепенно добавить сахар, лимонную цедру и сок, соль. Затем вбить по одному яйца и добавить сметану.", step2image: "https://img1.russianfood.com/dycontent/images_upl/7/sm_6277.jpg", step3: "Форму с коржом завернуть в фольгу. Вылить начинку. Поставить в противень с высокими бортиками, налить в противень кипяток таким образом, чтобы вода доходила до 1/2 высоты наполненной формы. Выпекать около 1 часа 45 минут до готовности. Вынуть форму из воды, охладить при комнатной температуре 20 минут. Острием ножа провести по стенкам, аккуратно отсоединить бортики формы. Оставить при комнатной температуре до полного охлаждения. Оставить в холодильнике на ночь.", step3image: "https://img1.russianfood.com/dycontent/images_upl/7/sm_6278.jpg", step4: "", step4image: "", step5: "", step5image: "", step6: "", step6image: ""))
        deserts.append(Deserts(name: "Банановое парфе", imageUrl: "https://img1.russianfood.com/dycontent/images_upl/2/sm_1726.jpg", time: 0, title: "Банановое парфе – это очень просто и очень вкусно.", requirements: "бананы - 3 шт.\nтворог - 300 г\nсметана густая - 1/2 стакана\nкорица молотая - 1 ч. ложка\nсахарная пудра - 3 ст. ложки", videoUrl: "", step1: "Как приготовить парфе из бананов?", step1image: "", step2: "Бананы взбейте блендером со сметаной, творогом, корицей и сахарной пудрой. Выложите массу в формочки и заморозьте.", step2image: "", step3: "При подаче формочки окуните на несколько секунд в горячую воду и выложите парфе на тарелочки.", step3image: "", step4: "Полейте банановое парфе сгущенным с сахаром молоком, оформите «листиками» из шоколада.", step4image: "", step5: "Приятного аппетита!", step5image: "", step6: "", step6image: ""))
       }
    
    }

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/2.1, height: view.frame.height/4.1)
    }
}
