import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 50),
          SearchField(),
          ImageRow([
            "https://cdn.pixabay.com/photo/2015/07/31/11/45/library-869061_640.jpg",
            "https://cdn.pixabay.com/photo/2018/11/28/11/03/coffee-3843382_640.jpg",
            "https://cdn.pixabay.com/photo/2017/06/12/19/04/coruh-valley-2396478_640.jpg",
           
          ]),
          ImageRow([
            "https://cdn.pixabay.com/photo/2016/05/17/22/19/fashion-1399344_640.jpg",
            "https://cdn.pixabay.com/photo/2015/12/04/14/05/code-1076536_640.jpg",
             "https://cdn.pixabay.com/photo/2014/02/05/00/37/staging-258631_640.jpg",
          ]),
          ImageRow([
            "https://cdn.pixabay.com/photo/2013/11/03/08/05/cheers-204742_640.jpg",
            "https://cdn.pixabay.com/photo/2015/04/20/17/39/man-731900_640.jpg",
          ]),
          ImageRow([
            "https://cdn.pixabay.com/photo/2019/09/06/02/52/football-4455306_640.jpg",
            "https://cdn.pixabay.com/photo/2021/07/11/18/48/books-6404666_640.jpg",
            "https://cdn.pixabay.com/photo/2016/11/23/00/33/man-1851469_640.jpg",
           
          ]),
            
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Container(
        height: 45,
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Search',
            filled: true,
            fillColor: Colors.white,
            suffixIcon: const Icon(Icons.mic),
            contentPadding: EdgeInsets.all(8),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(75),
            ),
            prefixIcon: const Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(75),
            ),
          ),
        ),
      ),
    );
  }
}

class ImageRow extends StatelessWidget {
  final List<String> imageUrls;

  const ImageRow(this.imageUrls, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: imageUrls
          .map(
            (url) => Expanded(
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  width: 130,
                  height: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(url),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
