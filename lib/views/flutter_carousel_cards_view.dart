import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<Map<String, String>> articleList = [
  {
    "title": "デジタル格差を埋めるモバイルアプリの力",
    "body":
        "スマートフォンは今や誰もが手にする時代になりましたが、地域や世代によって情報格差はいまだに存在しています。モバイルアプリは、教育機会の拡大や行政サービスへのアクセス向上といった形で、社会的な橋渡しを担うことができます。誰にでも使いやすいUIや多言語対応を実現することで、デジタルの恩恵を公平に届けることが可能になるのです。",
    "image":
        "https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80",
  },
  {
    "title": "防災アプリが地域社会を守る",
    "body":
        "災害大国である日本において、防災アプリの存在は大きな意味を持ちます。避難情報やライフラインの復旧状況をリアルタイムに共有できれば、命を守る行動につながります。また、地域住民が互いに助け合える仕組みをアプリに組み込むことで、単なる情報発信ツールを超えた「コミュニティの絆を強める仕組み」として機能します。",
    "image":
        'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  },
  {
    "title": "医療とアプリの融合が生み出す新しいケア",
    "body":
        "遠隔診療や服薬管理をサポートするアプリは、医療アクセスの不均衡を解消する可能性を秘めています。特に地方や高齢化が進む地域では、病院に行けない患者を支えるツールとなります。加えて、日々の健康データを蓄積し医師と共有する仕組みは、病気の予防や早期発見につながります。社会全体で医療資源を有効活用するためにも、アプリの役割はますます重要です。",
    "image":
        'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  },
  {
    "title": "教育アプリが広げる学びの可能性",
    "body":
        "インターネットとアプリの進化により、どこに住んでいても質の高い教育にアクセスできるようになってきました。学習アプリは、子どもたちが自分のペースで学べる柔軟性を提供し、障害を持つ子どもや不登校の子どもたちにも学習機会を広げます。また、保護者や教師と進捗を共有できる機能は、家庭と学校をつなぐ新しい教育モデルを形づくります。",
    "image":
        'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  },
  {
    "title": "環境問題に立ち向かうグリーンアプリ",
    "body":
        "気候変動や環境破壊の課題に対しても、アプリは有効な解決手段になりえます。例えば、家庭での電力消費を見える化するアプリや、リサイクル拠点を案内するアプリは、市民一人ひとりの行動を変えるきっかけになります。テクノロジーが個人の意識変革を促し、やがて社会全体のサステナブルなライフスタイルへとつながっていくのです。",
    "image":
        'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  },
];

class FlutterCarouselCardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(child: _FlutterCarouselCardsItem()),
    );
  }
}

class _FlutterCarouselCardsItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.9,
        enableInfiniteScroll: false,
        viewportFraction: 0.9,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        enlargeFactor: 0.2,
      ),
      items: articleList.map((article) {
        return _articleSlider(
          article["image"]!,
          article["title"]!,
          article["body"]!,
        );
      }).toList(),
    );
  }
}

class _articleSlider extends StatelessWidget {
  final String image;
  final String title;
  final String body;
  final String? imageUrl;

  _articleSlider(this.image, this.title, this.body, {super.key, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(10, 10),
            blurRadius: 10,
            spreadRadius: 0.9,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: Image.network(image, fit: BoxFit.cover, width: 1000.0),
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              title,
              style: Theme.of(
                context,
              ).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(body, style: Theme.of(context).textTheme.bodyLarge),
          ),
        ],
      ),
    );
  }
}
