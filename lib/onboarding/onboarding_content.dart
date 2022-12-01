class OnBoardingContent {
  String imageURL;
  String labelText;
  String description;
  double height;
  double width;

  OnBoardingContent(this.imageURL, this.labelText, this.description, this.height, this.width);
}

List<OnBoardingContent> contents = [
  OnBoardingContent("assets/onboarding/super_utility.png", "Super Utility",
      "Easy to use, high security, support multiple platforms. Payment, transfer money anytime, anywhere !", 321, 72),
  OnBoardingContent(
      "assets/onboarding/easy_and_safe.png", "Easy and Safe", "Easy to pay Electricity Bill, Phone Top-up and Banking services", 317, 48),
  OnBoardingContent("assets/onboarding/super_promotions.png", "Super promotions", "Get Unlimited Promotions And Discounts From MOSAN", 321, 48),
];
