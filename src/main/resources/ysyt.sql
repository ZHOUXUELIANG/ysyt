/*
 Navicat Premium Data Transfer

 Source Server         : Tencent_SQL
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           :
 Source Schema         : ysyt

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 23/05/2021 21:41:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `uid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户唯一身份标识',
  `password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  `update_time` datetime(6) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '图书id唯一标识',
  `bname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件服务器地址',
  `outline` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书概要描述',
  `cover` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书封面',
  `keyword` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简短描述',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  `update_time` datetime(6) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '百年孤独', '加西亚・马尔克斯', 'http://119.23.237.129:9000/txt/百年孤独.txt', '《百年孤独》是魔幻现实主义文学的代表作，描写了布恩迪亚家族七代人的传奇故事，以及加勒比海沿岸小镇马孔多的百年兴衰，反映了拉丁美洲一个世纪以来风云变幻的历史。作品融入神话传说、民间故事、宗教典故等神秘因素，巧妙地糅合了现实与虚幻，展现出一个瑰丽的想象世界，成为20世纪最重要的经典文学巨著之一。1982年加西亚•马尔克斯获得诺贝尔文学奖，奠定世界级文学大师的地位，很大程度上乃是凭借《百年孤独》的巨大影响。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181218%2Fbfb0c3130242480eb8395aabfc6ad565.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618905856&t=82552fb7f8c429601cc16d929e4555d5', '唯有孤独永恒', '2021-04-12 15:43:50.946000', 0, '2021-04-12 15:43:50.946000');
INSERT INTO `book` VALUES (2, '乌合之众', '古斯塔夫・勒庞', 'http://119.23.237.129:9000/txt/乌合之众.txt', '古斯塔夫・勒庞 Gustave Le Bon(1841-1931) 法国著名社会心理学家。他自1894年始，写下一系列社会心理学著作，以本书最为著名；在社会心理学领域已有的著作中，最有影响的，也是这本并不很厚的《乌合之众》。古斯塔夫・勒庞在他在书中极为精致地描述了集体心态，对人们理解集体行为的作用以及对社会心理学的思考发挥了巨大影响。《乌合之众--大众心理研究》在西方已印至第29版，其观点新颖，语言生动，是群体行为的研究者不可不读的佳作。', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=138959820,710952948&fm=26&gp=0.jpg', '个体愿意抛弃是非', '2021-04-12 15:50:24.377000', 0, '2021-04-12 15:50:24.377000');
INSERT INTO `book` VALUES (3, '悲惨世界', '维克多・雨果', 'http://119.23.237.129:9000/txt/悲惨世界.txt', '这是法国十九世纪浪漫派领袖雨果继《巴黎圣母院》之后创作的又一部气势恢宏的鸿篇巨著。全书以卓越的艺术魅力，展示了一幅自1793年法国大革命至1832年巴黎人民起义期间，法国近代社会生活和政治生活的辉煌画卷，最大限度地体现了雨果在叙事方面的过人才华，是世界文学史上现实主义与浪漫主义结合的典范。小说集中反映了雨果的人道主义思想，饱含了雨果对于人类苦难命运的关心和对末来坚定不移的信念，具有震撼人心的艺术感染力。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fm.360buyimg.com%2Fn12%2Fg14%2Fm02%2F08%2F0d%2Frbehvlh501oiaaaaaalw3vrwzleaabpmwa0uvaaatb1985.jpg%21q70.jpg&refer=http%3A%2F%2Fm.360buyimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618906671&t=041470e5252b54e286b1615d9d6619e5', '不是沉默的理由', '2021-04-12 15:51:27.167000', 0, '2021-04-12 15:51:27.167000');
INSERT INTO `book` VALUES (4, '朝花夕拾', '鲁迅', 'http://119.23.237.129:9000/txt/朝花夕拾.txt', '中西的思想确乎有一点不同。听说中国的孝子们，一到将要“罪孽深重祸延父母”的时候，就买几斤人参，煎汤灌下去，希望父母多喘几天气，即使半天也好。我的一位教医学的先生却教给我医生的职务道：可医的应该给他医治，不可医的应该给他死得没有痛苦。——但这先生自然是西医。 　　父亲的喘气颇长久，连我也听得很吃力，然而谁也不能帮助他。我有时竟至于电光一闪似的想道：“还是快一点喘完了罢……。”立刻觉得这思想就不该，就是犯了罪；但同时又觉得这思想实在是正当的，我很爱我的父亲。便是现在，也还是这样想。 ', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimages.gr-assets.com%2Fbooks%2F1384804216l%2F18663411.jpg&refer=http%3A%2F%2Fimages.gr-assets.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618906885&t=76e788b4c996590d7b7e35e14ce27bc0', '旧事重提', '2021-04-12 15:51:41.342000', 0, '2021-04-12 15:51:41.342000');
INSERT INTO `book` VALUES (5, '堂吉诃德', '塞万提斯', 'http://119.23.237.129:9000/txt/堂吉诃德.txt', '本书是西班牙大师塞万提斯划时代的巨著，是文艺复兴时期的现实主义巨作，也是世界文学史上一颗璀璨的明珠。主人公堂吉诃德一方面脱离现实，爱幻想，企图仿效游侠骑士的生活；另一方面又心地善良，立志铲除人间邪恶。是一个可笑、可叹、可悲又可敬的人物，是幽默文学中一个不朽的典型。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.duozhuayu.com%2Fb661a6ac6bd611e780c600163e04f327.jpeg&refer=http%3A%2F%2Fimg.duozhuayu.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618907083&t=80c12af5301c7e30cf63a5eeda3fb644', '历史孕育了真理', '2021-04-12 15:51:59.356000', 0, '2021-04-12 15:51:59.356000');
INSERT INTO `book` VALUES (6, '三体', '刘慈欣', 'http://119.23.237.129:9000/txt/三体.txt', '\r\n\r\n文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\r\n\r\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\r\n\r\n人类的末日悄然来临。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fstatic.zongheng.com%2Fupload%2Fcover%2Fshucheng%2F41%2F11541846.jpg&refer=http%3A%2F%2Fstatic.zongheng.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618907193&t=4c96cd72c844b6c9aea82a19d703e2f4', '给岁月以文明', '2021-04-12 15:52:33.283000', 0, '2021-04-12 15:52:33.283000');
INSERT INTO `book` VALUES (7, '平凡的世界', '路遥', 'http://119.23.237.129:9000/txt/平凡的世界.txt', '《平凡的世界)》是一部现实主义小说，也是小说化的家族史。作家高度浓缩了中国西北农村的历史变迁过程，作品达到了思想性与艺术性的高度统一，特别是主人公面对困境艰苦奋斗的精神，对今天的大学生朋友仍有启迪。这是一部全景式地表现中国当代城乡社会生活的长篇小说。《平凡的 世界(套装共3册)》共三部。作者在近十年问广阔背景上，通过复杂的矛盾纠葛，刻画了社会各阶层众多普通人的形象。劳动与爱情，挫折与追求，痛苦与欢乐，日常生活与巨大社会冲突，纷繁地交织在一起，深刻地展示了普通人在大时代历史进程中所走过的艰难曲折的道路。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.univs.cn%2Fwebfile%2Fevent%2F2009%2F9%2F8%2F45%2F1252390034333_28259.jpg&refer=http%3A%2F%2Fimg.univs.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618907372&t=7367553d427025e725b305e272a32edb', '命运总是不如人愿', '2021-04-12 15:52:47.666000', 0, '2021-04-12 15:52:47.666000');
INSERT INTO `book` VALUES (8, '白鹿原', '陈忠实', 'http://119.23.237.129:9000/txt/白鹿原.txt', '这是一部渭河平原五十年变迁的雄奇史诗，一轴中国农村班斓多彩、触目惊心的长幅画卷。主人公六娶六丧，神秘的序曲预示着不祥。一个家族两代子孙，为争夺白鹿原的统治代代争斗不已，上演了一幕幕惊心动魄的活剧：巧取风水地，恶施美人计，孝子为匪，亲翁杀媳，兄弟相煎，情人反目……大革命、日寇入侵、三年内战，白鹿原翻云覆雨，王旗变幻，家仇国恨交错缠结，冤冤相报代代不已……古老的土地在新生的阵痛中颤栗。厚重深邃的思想内容，复杂多变的人物性格，跌宕曲折的故事情节，绚丽多彩的风土人情，形成作品鲜明的艺术特色和令人震撼的真实感。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.litouch.com%2Fwp-content%2Fuploads%2F2012%2F10%2Fbaily.jpeg&refer=http%3A%2F%2Fwww.litouch.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618907470&t=6ffac5902ff3f9022f36b80014ae2937', '自信平生无愧事', '2021-04-12 15:53:04.029000', 0, '2021-04-12 15:53:04.029000');
INSERT INTO `book` VALUES (10, '四世同堂', '老舍', 'http://119.23.237.129:9000/txt/四世同堂.txt', '小说在卢沟桥事变爆发、北平沦陷的时代背景下，以祁家四世同堂的生活为主线，形象、真切地描绘了以小羊圈胡同住户为代表的各个阶层、各色人等的荣辱浮沉、生死存亡。作品记叙了北平沦陷后的畸形世态中，日寇铁蹄下广大平民的悲惨遭遇，那一派古老、宁静生活被打破后的不安、惶惑与震撼，鞭挞了附敌作恶者的丑恶灵魂，揭露了日本军国主义的残暴罪行，更反映出百姓们面对强敌愤而反抗的英勇无畏，讴歌、弘扬了中国人民伟大的爱国主义精神和坚贞高尚的民族气节，史诗般地展现了第二次世界大战期间，中国人民为世界反法西斯战争做出的杰出贡献，气度恢弘，可歌可泣。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20170828%2F1466de2acf284b10a5d5071cc81c62b3.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618907919&t=b9f6289b31cf06396a81b22b1e483138', '你必须把委屈当作生活', '2021-04-12 15:53:27.695000', 0, '2021-04-12 15:53:27.695000');
INSERT INTO `book` VALUES (11, '活着', '余华', 'http://119.23.237.129:9000/txt/活着.txt', '《活着》讲述了农村人福贵悲惨的人生遭遇。福贵本是个阔少爷，可他嗜赌如命，终于赌光了家业，一贫如洗。他的父亲被他活活气死，母亲则在穷困中患了重病，福贵前去求药，却在途中被国民党抓去当壮丁。经过几番波折回到家里，才知道母亲早已去世，妻子家珍含辛茹苦地养大两个儿女。此后更加悲惨的命运一次又一次降临到福贵身上，他的妻子、儿女和孙子相继死去，最后只剩福贵和一头老牛相依为命，但老人依旧活着，仿佛比往日更加洒脱与坚强。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg1.zzxu.cn%2Fuploadfile%2Ffile%2F2017%2F1021%2F20171021094502637.jpg&refer=http%3A%2F%2Fimg1.zzxu.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1620789560&t=a7bc6450eb7d9477e4824a5fa0dc638e', '以笑的方式哭', '2021-04-15 14:08:51.000000', 0, '2021-04-16 14:08:54.000000');
INSERT INTO `book` VALUES (12, '月亮与六便士', '威廉・萨默塞特・毛姆', 'http://119.23.237.129:9000/txt/月亮与六便士.txt', '银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一种自我绑架，唯有失去是通向自由之途。在异国他乡，他贫病交加，对梦想却愈发坚定执着。他说：我必须画画，就像溺水的人必须挣扎。在经历种种离奇遭遇后，他来到南太平洋的一座孤岛，同当地一位姑娘结婚生子，成功创作出一系列惊世杰作。人世漫长得转瞬即逝，有人见尘埃，有人见星辰。查尔斯就是那个终其一生在追逐星辰的人。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fimages%2F20181203%2Ff4d7f92191904f1fa1e22a5cbc33ca06.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618724901&t=a872edbdcb1b14073d14c73883990dce', '高尚中蕴藏着卑鄙', '2021-04-15 19:36:34.000000', 0, '2021-04-16 14:08:54.000000');
INSERT INTO `book` VALUES (13, '人间失格', '太宰治', 'http://119.23.237.129:9000/txt/人间失格.txt', '人间失格，即丧失为人的资格。由序、第一手札、第二手札、第三手札、后记共五个部分构成，其中序和后记以作者口吻叙说，三个手札则以主人公叶藏的口吻叙述。主人公叶藏胆小懦弱，惧怕世间的情感，不了解人类复杂的思想，继而通过搞笑取乐别人，隐藏真实的自己。后来发现饮酒作乐似乎更能逃避这个世界，于是终日放浪形骸，通过酒精、药物、女人来麻痹自己，最终走向毁灭。他被身为人最真切的痛苦所折磨，终其一生都在自我厌倦下寻求爱，逃避爱，最后只能毁灭自己。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fpic3.58cdn.com.cn%2Fzhuanzh%2Fn_v238ff6d55e08e42b188cc22b7f1b9fd09.jpg%3Fw%3D750%26h%3D0&refer=http%3A%2F%2Fpic3.58cdn.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618725135&t=9d52d01577a3767dd7d635de4317a84e', '生而为人我很抱歉', '2021-04-21 19:36:42.000000', 0, '2021-04-14 19:37:00.000000');
INSERT INTO `book` VALUES (14, '小王子', '安托万・德・埃克苏佩里', 'http://119.23.237.129:9000/txt/小王子.txt', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行星，开始了遨游太空的旅行。他先后访问了六个行星，各种见闻使他陷入忧伤，他感到大人们荒唐可笑、太不正常。只有在其中一个点灯人的星球上，小王子才找到一个可以作为朋友的人。但点灯人的天地又十分狭小，除了点灯人他自己，不能容下第二个人。在地理学家的指点下，孤单的小王子来到人类居住的地球。', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=945612940,2946068888&fm=26&gp=0.jpg', '人群里也很寂寞', '2021-04-06 01:36:46.000000', 0, '2021-03-29 19:37:04.000000');
INSERT INTO `book` VALUES (15, '人性的弱点', '戴尔・卡耐基', 'http://119.23.237.129:9000/txt/人性的弱点.txt', '《人性的弱点》自出版以来，已被译成 58 种文字畅销于世界各地，全球总销量达 9000 余万册，拥有 4 亿多读者，稳居成功励志类图书榜首，是人类出版史上继《圣经》之后的第二大畅销书。该书汇集了卡耐基的思想精华和激动人心的内容，是作者功的励志经典，出版后立即获得了广大读者的欢迎，成为西方世界的人文书。无数读者通过阅读和实践书中介绍的各种方法，\r\n不仅走出困境，有的还成为人仰慕的杰出人士。只要不断研读本书，相信你也可以发掘自己的无穷潜力，创造辉煌的人生。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.yzcdn.cn%2Fupload_files%2F2017%2F12%2F25%2FFlyT7ET8B6Q59iCJNKRB7jg2D589.jpg%3FimageView2%2F2%2Fw%2F580%2Fh%2F580%2Fq%2F75%2Fformat%2Fjpg&refer=http%3A%2F%2Fimg.yzcdn.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1621167969&t=4d5941325f240400881176a2ea79c0e7', '用你的毅力磨平高山', '2021-04-08 11:24:03.000000', 0, '2021-04-09 11:24:41.000000');

-- ----------------------------
-- Table structure for book_case
-- ----------------------------
DROP TABLE IF EXISTS `book_case`;
CREATE TABLE `book_case`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '书架唯一id',
  `uid` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户id',
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简要描述',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书内容地址',
  `cover` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封面',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(6) NULL DEFAULT NULL COMMENT '更新时间',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 85 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book_case
-- ----------------------------
INSERT INTO `book_case` VALUES (80, '15912675779', '自定义到书架', 'http://119.23.237.129:9000/txt/0e0ab897da28457cae641bfabd7181ed.txt', 'http://119.23.237.129:9000/image/d4822e8d16f5491b9baa4d2c45fea231.jpg', '2021-05-14 14:13:39.469000', '2021-05-14 14:13:39.469000', 0);
INSERT INTO `book_case` VALUES (81, '15912675779', '自定义到书架', 'http://119.23.237.129:9000/txt/64a8e876a2f74f72895436c1dd8cdd46.txt', 'http://119.23.237.129:9000/image/b7e16878cb0d438f9dbfdd508ed254d0.jpg', '2021-05-14 14:14:48.132000', '2021-05-14 14:14:48.132000', 0);
INSERT INTO `book_case` VALUES (82, '', '老人与海', 'http://119.23.237.129:9000/txt/老人与海.txt', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.0351pg.com%2FUploadFiles%2FTopic%2F2019-3%2Fjpg%2F%7B5674c051-c090-4429-91fc-d7487a916062%7D.jpg&refer=http%3A%2F%2Fwww.0351pg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622905395&t=2dbcd1d5256c2782cd10634f8e1a279c', '2021-05-14 15:56:03.920000', '2021-05-14 15:56:03.920000', 0);
INSERT INTO `book_case` VALUES (83, '15912675779', '四世同堂', 'http://119.23.237.129:9000/txt/四世同堂.txt', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F5b0988e595225.cdn.sohucs.com%2Fq_70%2Cc_zoom%2Cw_640%2Fimages%2F20170828%2F1466de2acf284b10a5d5071cc81c62b3.jpeg&refer=http%3A%2F%2F5b0988e595225.cdn.sohucs.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1618907919&t=b9f6289b31cf06396a81b22b1e483138', '2021-05-14 15:56:37.097000', '2021-05-14 15:56:37.097000', 0);
INSERT INTO `book_case` VALUES (84, '', '小王子', 'http://119.23.237.129:9000/txt/小王子.txt', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=945612940,2946068888&fm=26&gp=0.jpg', '2021-05-14 16:23:47.040000', '2021-05-14 16:23:47.040000', 0);

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '图书id唯一标识',
  `bname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书名',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件服务器地址',
  `outline` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书概要描述',
  `cover` varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图书封面',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES (1, '人间失格', '太宰治', 'http://119.23.237.129:9000/txt/人间失格.txt', '人间失格，即丧失为人的资格。由序、第一手札、第二手札、第三手札、后记共五个部分构成，其中序和后记以作者口吻叙说，三个手札则以主人公叶藏的口吻叙述。主人公叶藏胆小懦弱，惧怕世间的情感，不了解人类复杂的思想，继而通过搞笑取乐别人，隐藏真实的自己。后来发现饮酒作乐似乎更能逃避这个世界，于是终日放浪形骸，通过酒精、药物、女人来麻痹自己，最终走向毁灭。他被身为人最真切的痛苦所折磨，终其一生都在自我厌倦下寻求爱，逃避爱，最后只能毁灭自己。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.u522.com%2Ftu%2F70914.jpg&refer=http%3A%2F%2Fwww.u522.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622905465&t=bae9923d07e3d2836b2076c32acb527f');
INSERT INTO `carousel` VALUES (2, '小王子', '安托万・德・埃克苏佩里', 'http://119.23.237.129:9000/txt/小王子.txt', '小王子是一个超凡脱俗的仙童，他住在一颗只比他大一丁点儿的小行星上。陪伴他的是一朵他非常喜爱的小玫瑰花。但玫瑰花的虚荣心伤害了小王子对她的感情。小王子告别小行星，开始了遨游太空的旅行。他先后访问了六个行星，各种见闻使他陷入忧伤，他感到大人们荒唐可笑、太不正常。只有在其中一个点灯人的星球上，小王子才找到一个可以作为朋友的人。但点灯人的天地又十分狭小，除了点灯人他自己，不能容下第二个人。在地理学家的指点下，孤单的小王子来到人类居住的地球。', 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=945612940,2946068888&fm=26&gp=0.jpg');
INSERT INTO `carousel` VALUES (3, '月亮与六便士', '威廉・萨默塞特・毛姆', 'http://119.23.237.129:9000/txt/月亮与六便士.txt', '银行家查尔斯，人到中年，事业有成，为了追求内心隐秘的绘画梦想，突然抛妻别子，弃家出走。他深知：人的每一种身份都是一种自我绑架，唯有失去是通向自由之途。在异国他乡，他贫病交加，对梦想却愈发坚定执着。他说：我必须画画，就像溺水的人必须挣扎。在经历种种离奇遭遇后，他来到南太平洋的一座孤岛，同当地一位姑娘结婚生子，成功创作出一系列惊世杰作。人世漫长得转瞬即逝，有人见尘埃，有人见星辰。查尔斯就是那个终其一生在追逐星辰的人。', 'http://pic.cgyouxi.com/orange/title/ec7e134dab8356cb5dadf4645dc924a0_47.jpg!n900');
INSERT INTO `carousel` VALUES (4, '罗生门', '芥川龙之介', 'http://119.23.237.129:9000/txt/罗生门.txt', '罗生门，日本京都的正南门。云游和尚、砍柴人和乞丐在城门底下避雨，三人闲聊，话题开始，故事的序幕拉开：一个武士和他妻子路过荒山，遭遇了不测。妻子被侮辱，而武士惨遭杀害。惨案如何酿成？凶手、妻子、借武士亡魂来做证的女巫，都各有说法。真相只得一个，但是各人提供证词的目的却各有不同。为了美化自己的道德，减轻自己的罪恶，掩饰自己的过失，人人都开始叙述一个美化自己的故事版本。荒山上的惨案，成了一团拨不开看不清的迷雾。谈论完毕，雨过天晴。砍柴人在罗生门旁发现一个哭泣的弃婴。他决定收养下来，抱着婴孩往夕阳深处走去。', 'https://i.ytimg.com/vi/88goUSBTu7o/mqdefault.jpg');
INSERT INTO `carousel` VALUES (5, '边城', '沈从文', 'http://119.23.237.129:9000/txt/边城.txt', '《边城》是沈从文的代表作，写于一九三三年至一九三四年初。这篇作品如沈从文的其他湘西作品，着眼于普通人、善良人的命运变迁，描摹了湘女翠翠阴差阳错的生活悲剧，诚如作者所言：“一切充满了善，然而到处是不凑巧。既然是不凑巧，因之素朴的善终难免产生悲剧。”', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQquyX0IkSXn5ThjSXITbPSZ9kPKsDLz5f6Gw&usqp=CAU');
INSERT INTO `carousel` VALUES (6, '老人与海', '海明威', 'http://119.23.237.129:9000/txt/老人与海.txt', '本书讲述了一个渔夫的故事。古巴老渔夫圣地亚哥在连续八十四天没捕到鱼的情况下，终于独自钓上了一条大马林鱼，但这鱼实在大，把他的小船在海上拖了三天才筋疲力尽，被他杀死了绑在小船的一边。在归程中，他再遭到一条鲨鱼的袭击，最后回港时只剩鱼头鱼尾和一条脊骨。而在老圣地亚哥出海的日子里，他的忘年好友一直在海边忠诚地等待，满怀信心地迎接着他的归来。', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fwww.0351pg.com%2FUploadFiles%2FTopic%2F2019-3%2Fjpg%2F%7B5674c051-c090-4429-91fc-d7487a916062%7D.jpg&refer=http%3A%2F%2Fwww.0351pg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1622905395&t=2dbcd1d5256c2782cd10634f8e1a279c');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(0) NOT NULL COMMENT '评论id，用于鉴别唯一一条评论',
  `uid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户id',
  `bid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图书id',
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `deleted` int(0) NULL DEFAULT NULL COMMENT '逻辑删除',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(6) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户唯一身份标识',
  `username` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `avatar` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birth` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `create_time` datetime(6) NULL DEFAULT NULL COMMENT '创建时间',
  `deleted` int(0) NULL DEFAULT 0 COMMENT '逻辑删除',
  `update_time` datetime(6) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('15812191051', '吴飞', '123456', 'http://119.23.237.129:9000/image/8b1f0cdd4bb448dc8f78ad5b27a91ddf.jpg', '男', '2021-04-14', '2021-04-08 15:09:14.592897', 0, '2021-04-17 10:41:12.093000');
INSERT INTO `user` VALUES ('15812191052', 'Sandy', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '女', '2021-04-14', '2021-04-08 15:09:15.520890', 0, '2021-04-08 15:09:15.520890');
INSERT INTO `user` VALUES ('15812191053', 'Billie', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-08 15:09:17.264847', 0, '2021-04-08 15:09:17.264847');
INSERT INTO `user` VALUES ('15812191054', 'Henry', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-08 16:22:53.882000', 0, '2021-04-08 16:22:53.882000');
INSERT INTO `user` VALUES ('15812191055', '高配成', '123456', 'http://119.23.237.129:9000/image/740308b56a914c3f8cc489994c392577.jpg', '保密', '2021-04-07', '2021-04-08 16:23:33.672000', 0, '2021-04-17 22:59:42.252000');
INSERT INTO `user` VALUES ('15812191056', '唐狗', '123456', 'http://119.23.237.129:9000/image/8b1f0cdd4bb448dc8f78ad5b27a91ddf.jpg', '保密', '2017-04-03', '2021-04-09 20:17:51.808000', 0, '2021-04-17 10:15:23.178000');
INSERT INTO `user` VALUES ('15812191058', 'Jone', '123456', 'http://119.23.237.129:9000/image/8b1f0cdd4bb448dc8f78ad5b27a91ddf.jpg', '女', '2021-04-14', '2021-04-08 15:09:11.555746', 0, '2021-04-17 10:20:01.696000');
INSERT INTO `user` VALUES ('15812191059', 'Jack', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-08 15:09:12.463848', 0, '2021-04-08 15:09:12.463848');
INSERT INTO `user` VALUES ('15812191073', 'Bella', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-12 16:18:23.758000', 0, '2021-04-12 16:18:23.758000');
INSERT INTO `user` VALUES ('15912607385', 'one', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 13:19:14.586000', 0, '2021-04-10 13:19:14.586000');
INSERT INTO `user` VALUES ('15912663289', 'andy', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 13:30:31.608000', 0, '2021-04-10 13:30:31.608000');
INSERT INTO `user` VALUES ('15912675123', 'Casey', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-12 19:02:10.711000', 0, '2021-04-12 19:02:10.711000');
INSERT INTO `user` VALUES ('15912675234', '赵德', '123456', 'http://119.23.237.129:9000/image/49d233d87da64114aaf13482b94f2164.png', '男', '2017-04-04', '2021-04-10 15:49:16.575000', 0, '2021-04-17 22:46:22.345000');
INSERT INTO `user` VALUES ('15912675623', 'Ellie', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-11 13:13:32.131000', 0, '2021-04-11 13:13:32.131000');
INSERT INTO `user` VALUES ('15912675764', '祥子', '123456', 'http://119.23.237.129:9000/image/f9bd1c81da0d4f9e82fc56fc359b9292.png', '女', '1990-07-10', '2021-04-10 16:22:51.402000', 0, '2021-04-18 09:00:09.085000');
INSERT INTO `user` VALUES ('15912675765', '黄四郎', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-11 13:12:21.426000', 0, '2021-04-11 13:12:21.426000');
INSERT INTO `user` VALUES ('15912675771', 'Stanley', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 15:42:32.793000', 0, '2021-04-10 15:42:32.793000');
INSERT INTO `user` VALUES ('15912675772', 'Smith', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 15:37:55.828000', 0, '2021-04-10 15:37:55.828000');
INSERT INTO `user` VALUES ('15912675774', 'two', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 15:33:39.144000', 0, '2021-04-10 15:33:39.144000');
INSERT INTO `user` VALUES ('15912675776', 'BLACK', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 16:09:22.963000', 0, '2021-04-10 16:09:22.963000');
INSERT INTO `user` VALUES ('15912675779', '刘能', '123456', 'http://119.23.237.129:9000/image/ac219f21b78b4f7693a72ae13ead50d2.jpg', '女', '2014-03-11', '2021-04-10 13:32:08.486000', 0, '2021-05-15 09:51:11.351000');
INSERT INTO `user` VALUES ('15912675789', 'timi', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 16:22:17.805000', 0, '2021-04-10 16:22:17.805000');
INSERT INTO `user` VALUES ('15912675898', '邢家深', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '保密', '1999-04-06', '2021-04-11 15:24:46.661000', 0, '2021-04-17 17:46:44.656000');
INSERT INTO `user` VALUES ('15912675899', 'hhh', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-14 10:47:17.734000', 0, '2021-04-14 10:47:17.735000');
INSERT INTO `user` VALUES ('18212675779', 'bob', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 11:04:20.402000', 0, '2021-04-10 11:04:20.402000');
INSERT INTO `user` VALUES ('18312675779', 'timi', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 10:54:59.099000', 0, '2021-04-10 10:54:59.099000');
INSERT INTO `user` VALUES ('19612675779', 'andy', '123456', 'http://119.23.237.129:9000/image/9e696f64cdfc45959834bb1445ab4417.png', '男', '2021-04-14', '2021-04-10 10:53:33.401000', 0, '2021-04-10 10:53:33.401000');

SET FOREIGN_KEY_CHECKS = 1;
