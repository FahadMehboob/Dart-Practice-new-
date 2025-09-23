void main(List<String> args) {
  PickImage().pick(SourceType.GALLERY);
}

class PickImage {
  pick(SourceType source) {
    switch (source) {
      case SourceType.CAMERA:
        print("Picking Iamge from Camera");
        break;
      case SourceType.GALLERY:
        print("Picking Iamge from Gallery");
        break;
      case SourceType.GOOGLEPHOTOS:
        print("Picking Iamge from Google Photos");
        break;
    }
  }
}

enum SourceType {
  CAMERA,
  GALLERY,
  GOOGLEPHOTOS;
}
