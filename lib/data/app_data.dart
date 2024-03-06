import 'package:flutter_clinic/data/models/info_widget_model.dart';

abstract class AppData{
  static List<InfoWidgetModel> data = [
      InfoWidgetModel(
        image: "assets/png/hospital.png",
        text: "Записывайтесь на прием к самым лучшим специалистам",
      ),
      InfoWidgetModel(
        image: "assets/png/clipboard.png",
        text:
            "Сохраняйте результаты ваших анализов, диагнозы и рекомендации от врачей в собственную библиотеку",
      ),
      InfoWidgetModel(
        image: "assets/png/speech.png",
        text:
            "Просматривайте отзывы о врачах и дополняйте собственными комментариями",
      ),
      InfoWidgetModel(
        image: "assets/png/bell.png",
        text: "Получайте уведомления о приеме или о поступивших сообщениях",
      ),
    ];
}