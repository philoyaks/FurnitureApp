class Products {
  int id;
  int price;
  String title;
  String images;
  String description;
  Products({this.title, this.description, this.price, this.id, this.images});
}

List<Products> products = [
  Products(
      id: 1,
      price: 20,
      title: '20',
      images: 'assets/images/68.png',
      description: 'loremm lispimn la'),
  Products(
      id: 2,
      price: 30,
      title: '20',
      images: 'assets/images/chair2.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus condimentum tortor ac fringilla. Suspendisse nec lorem malesuada, rutrum lectus vel, aliquet nunc.'),
  Products(
      id: 3,
      price: 80,
      title: '20',
      images: 'assets/images/chair3.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus condimentum tortor ac fringilla. Suspendisse nec lorem malesuada, rutrum lectus vel, aliquet nunc. Aliquam vitae enim ac ante condimentum imperdiet vitae ac orci. Curabitur porttitor egestas nunc id imperdiet. Duis lobortis justo quis turpis egestas, vel blandit est finibus. Duis lectus odio, volutpat gravida justo sit amet, iaculis euismod augue. In a iaculis magna. Quisque fringilla varius risus ac eleifend. Aenean ut arcu nisl.'),
  Products(
      id: 4,
      price: 100,
      title: '20',
      images: 'assets/images/chair4.png',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tempus condimentum tortor ac fringilla. Suspendisse nec lorem malesuada, rutrum lectus vel, aliquet nunc. Aliquam vitae enim ac ante condimentum imperdiet vitae ac orci. '),
  Products(
      id: 5,
      price: 100,
      title: '20',
      images: 'assets/images/chair5.png',
      description:
          'loremm lispimn la the load j ssfjds j fjf jwje o3o3jrjf f rjod jfd'),
];
