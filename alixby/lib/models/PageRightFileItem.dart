import 'package:alixby/utils/MIcons.dart';
import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class PageRightFileItem {
  PageRightFileItem();
  static PageRightFileItem newPageRightFileItem(String box, String key, Icon icon, String title, int fileSize,
      DateTime fileTime, bool isFavor, bool isDir, String filetype) {
    return PageRightFileItem()
      ..box = box
      ..key = key
      ..icon = icon
      ..fileSize = fileSize
      ..filesizestr = filesize(fileSize)
      ..fileTime = fileTime.millisecondsSinceEpoch
      ..filetimestr = "${fileTime.year.toString()}\n${fileTime.month.toString()}-${fileTime.day.toString()}"
      ..title = title
      ..filetype = filetype
      ..isFavor = isFavor
      ..isDir = isDir;
  }

  String box = '';
  String key = '';
  String title = '';
  Icon icon = Icon(MIcons.wenjian);
  int fileSize = 0;
  String filesizestr = "0B";
  int fileTime = 0;
  String filetimestr = "1991\n1-1";
  bool selected = false;
  bool isFavor = false;
  bool isDir = false;
  String filetype = "file";
/*
  factory PageRightFileItem.fromJson(Map<String, dynamic> json) {
    return PageRightFileItem()
      ..key = json['key'] as String
      ..title = json['title'] as String
      ..fileSize = json['fileSize'] as int
      ..fileTime = json['fileTime'] as int
      ..icon = json['icon'] as String;
  }
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'key': this.key,
      'title': this.title,
      'fileSize': this.fileSize,
      'fileTime': this.fileTime,
      'icon': this.icon
    };
  }
  */
}
