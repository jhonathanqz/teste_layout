import 'package:flutter/material.dart';
import 'package:teste_layout/presentation/features/home/pages/home_form.dart';
import 'package:teste_layout/presentation/shared/style/app_text_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100]!,
      appBar: buildAppBar(),
      body: const HomeForm(),
    );
  }

  PreferredSize buildAppBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(152),
      child: Container(
        height: 152,
        color: Color(0xff0053b9),
        child: Center(
          child: userInfo(),
        ),
      ),
    );
  }

  ListTile userInfo() {
    return ListTile(
        title: Text.rich(
          TextSpan(
            text: "Olá, ",
            style: AppTextStyles.title.copyWith(
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: 'Jhonathan Queiroz',
                style: AppTextStyles.titleBold.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        subtitle: Text(
          "Bora jogar?",
          style: AppTextStyles.title.copyWith(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Container(
            height: 48,
            width: 48,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: NetworkImage(
                  'https://upload.wikimedia.org/wikipedia/commons/a/af/Tio_Douglas_Perfil.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ));
  }
}
