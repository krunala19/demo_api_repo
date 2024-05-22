enum MLMEndpoints {
  /// Banners
  ///
  banners,

  /// Authentication
  ///
  sendActivationCode,
  checkActivationCode,
  createUser,
  createChildUser,
  login,
  forgotPassword,

  /// User
  ///
  deleteUser,
  checkUser,
  getUser,
  updateUser,
  logoutUser,

  /// Messages
  ///
  getMessages,
  getAllMessages,

  /// Coupons
  ///
  coupons,

  /// Actions
  ///
  getActions,

  /// Translations
  ///
  transactions,

  /// Shops
  ///
  getShops,

  /// Partners
  ///
  partner,
  getAllPartners,

  /// Polls
  ///
  getAllPolls,
  postPollResults,

  /// App Version
  ///
  appVersion,

  /// Payment
  ///
  paymentSubscription,
}

extension MLMApiEndpoints on MLMEndpoints {
  String get path {
    switch (this) {
      case MLMEndpoints.getAllMessages:
        return 'app_message/get_all';
      case MLMEndpoints.banners:
        return 'banner/get';
      case MLMEndpoints.sendActivationCode:
        return 'send_activation';
      case MLMEndpoints.checkActivationCode:
        return 'check_activation';
      case MLMEndpoints.createUser:
        return 'user/create';
      case MLMEndpoints.login:
        return 'user/login';
      case MLMEndpoints.forgotPassword:
        return 'forgot_password';
      case MLMEndpoints.checkUser:
        return 'user/check';
      case MLMEndpoints.getUser:
        return 'user/get';
      case MLMEndpoints.deleteUser:
        return 'user/delete';
      case MLMEndpoints.logoutUser:
        return 'user/logout';
      case MLMEndpoints.getMessages:
        return 'message/get';
      case MLMEndpoints.coupons:
        return 'coupons';
      case MLMEndpoints.getActions:
        return 'action/get';
      case MLMEndpoints.transactions:
        return 'transactions';
      case MLMEndpoints.getShops:
        return 'shop/get_main';
      case MLMEndpoints.getAllPartners:
        return 'partner/get_all';
      case MLMEndpoints.partner:
        return 'partner';
      case MLMEndpoints.updateUser:
        return 'user/update';
      case MLMEndpoints.appVersion:
        return 'system/app_version';
      case MLMEndpoints.getAllPolls:
        return 'poll/get_all';
      case MLMEndpoints.postPollResults:
        return 'poll_result/create';
      case MLMEndpoints.createChildUser:
        return 'user/create/child';
      case MLMEndpoints.paymentSubscription:
        return 'wspay/subscription';
    }
  }
}
