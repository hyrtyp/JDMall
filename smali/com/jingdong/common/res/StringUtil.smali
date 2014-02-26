.class public Lcom/jingdong/common/res/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field public static alert_message_poor_data_error:Ljava/lang/String;

.field public static alert_message_poor_network2:Ljava/lang/String;

.field public static alert_message_signature_error:Ljava/lang/String;

.field public static alert_title_poor_network2:Ljava/lang/String;

.field public static app_error_close:Ljava/lang/String;

.field public static app_name:Ljava/lang/String;

.field public static back:Ljava/lang/String;

.field public static back_page:Ljava/lang/String;

.field public static cancel:Ljava/lang/String;

.field public static comment_answer:Ljava/lang/String;

.field public static comment_feedback:Ljava/lang/String;

.field public static cost_count:Ljava/lang/String;

.field public static exit:Ljava/lang/String;

.field public static exit_toast_message:Ljava/lang/String;

.field public static get_by_self:Ljava/lang/String;

.field public static go_setup:Ljava/lang/String;

.field public static gps_location_fail:Ljava/lang/String;

.field public static jd_game_app_has_no_install:Ljava/lang/String;

.field public static label_feedback:Ljava/lang/String;

.field public static limit_buy_product_message:Ljava/lang/String;

.field public static message_no_network:Ljava/lang/String;

.field public static msg_auto_update_switch_key:Ljava/lang/String;

.field public static need_long_click:Ljava/lang/String;

.field public static no_data:Ljava/lang/String;

.field public static no_image:Ljava/lang/String;

.field public static no_image_alert_dialog_key:Ljava/lang/String;

.field public static no_image_switch_key:Ljava/lang/String;

.field public static no_price:Ljava/lang/String;

.field public static not_find_browser:Ljava/lang/String;

.field public static not_find_camera:Ljava/lang/String;

.field public static not_find_gallery:Ljava/lang/String;

.field public static not_find_other:Ljava/lang/String;

.field public static ok:Ljava/lang/String;

.field public static pg_home_exit_confrim_string:Ljava/lang/String;

.field public static product_add_message:Ljava/lang/String;

.field public static product_add_negative:Ljava/lang/String;

.field public static product_add_positive:Ljava/lang/String;

.field public static product_add_title:Ljava/lang/String;

.field public static product_canot_add_to_car:Ljava/lang/String;

.field public static product_filter_hint:Ljava/lang/String;

.field public static product_jd_price:Ljava/lang/String;

.field public static product_limitbuy_price:Ljava/lang/String;

.field public static product_no_stock:Ljava/lang/String;

.field public static product_original_price:Ljava/lang/String;

.field public static product_price_label:Ljava/lang/String;

.field public static product_province_beijing:Ljava/lang/String;

.field public static prompt:Ljava/lang/String;

.field public static recharge_get_contacts:Ljava/lang/String;

.field public static recharge_get_contacts_permission:Ljava/lang/String;

.field public static retry:Ljava/lang/String;

.field public static search_filter_all_category:Ljava/lang/String;

.field public static search_filter_distribution:Ljava/lang/String;

.field public static search_filter_jd_distribute:Ljava/lang/String;

.field public static search_filter_other_distribute:Ljava/lang/String;

.field public static search_filter_price:Ljava/lang/String;

.field public static search_filter_region:Ljava/lang/String;

.field public static software_must_update_msg:Ljava/lang/String;

.field public static software_need_update_msg:Ljava/lang/String;

.field public static software_no_update_msg:Ljava/lang/String;

.field public static tip:Ljava/lang/String;

.field public static voice_search_message_hint:Ljava/lang/String;

.field public static voice_search_please_choose:Ljava/lang/String;

.field public static voice_search_title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4
    const-string v0, "\u4eac\u4e1c"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->app_name:Ljava/lang/String;

    .line 6
    const-string v0, "\u8bed\u97f3\u8bc6\u522b"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->voice_search_title:Ljava/lang/String;

    .line 7
    const-string v0, "\u60a8\u662f\u4e0d\u662f\u8981\u627e\uff1a"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->voice_search_please_choose:Ljava/lang/String;

    .line 8
    const-string v0, "\u60a8\u7684\u624b\u673a\u6682\u4e0d\u652f\u6301\u8bed\u97f3\u641c\u7d22\u529f\u80fd\uff0c\u70b9\u51fb\u786e\u5b9a\u4e0b\u8f7d\u5b89\u88c5\u6700\u65b0\u7684Google\u8bed\u97f3\u641c\u7d22\u8f6f\u4ef6\uff0c\u60a8\u4e5f\u53ef\u4ee5\u5728\u5404\u5e94\u7528\u5546\u5e97\u641c\u7d22\u201c\u8bed\u97f3\u641c\u7d22\u201d\u8fdb\u884c\u4e0b\u8f7d\u5b89\u88c5\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->voice_search_message_hint:Ljava/lang/String;

    .line 10
    const-string v0, "\u60a8\u7684\u8d2d\u7269\u8f66\u91cc\u5df2\u6709\u6b64\u7c7b\u5546\u54c1\uff0c\u4e0d\u8981\u592a\u8d2a\u5fc3\u54e6\uff01"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->limit_buy_product_message:Ljava/lang/String;

    .line 11
    const-string v0, "\u6682\u65e0\u62a5\u4ef7"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->no_price:Ljava/lang/String;

    .line 12
    const-string v0, "\u539f\u4ef7"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_original_price:Ljava/lang/String;

    .line 13
    const-string v0, "\u4eac\u4e1c\u4ef7\uff1a\uffe5"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_jd_price:Ljava/lang/String;

    .line 14
    const-string v0, "\uffe5"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_price_label:Ljava/lang/String;

    .line 15
    const-string v0, "\u79d2\u6740\u4ef7\uff1a\uffe5"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_limitbuy_price:Ljava/lang/String;

    .line 16
    const-string v0, "\u6ca1\u6709\u5e93\u5b58\uff0c\u4e0d\u80fd\u52a0\u5165\u8d2d\u7269\u8f66"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_no_stock:Ljava/lang/String;

    .line 17
    const-string v0, "\u6dfb\u52a0\u6210\u529f\uff01"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_add_title:Ljava/lang/String;

    .line 18
    const-string v0, "\u5546\u54c1\u5df2\u6210\u529f\u52a0\u5165\u8d2d\u7269\u8f66"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_add_message:Ljava/lang/String;

    .line 19
    const-string v0, "\u53bb\u8d2d\u7269\u8f66"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_add_positive:Ljava/lang/String;

    .line 20
    const-string v0, "\u518d\u901b\u901b"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_add_negative:Ljava/lang/String;

    .line 21
    const-string v0, "\u4e0d\u80fd\u52a0\u5165\u8d2d\u7269\u8f66\uff0c\u8bf7\u9009\u62e9\u5176\u4ed6\u5546\u54c1"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_canot_add_to_car:Ljava/lang/String;

    .line 23
    const-string v0, "\u7f51\u7edc\u4e0d\u4f73"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->alert_title_poor_network2:Ljava/lang/String;

    .line 24
    const-string v0, "\u7f51\u7edc\u4e0d\u4f73\uff0c\u53ef\u9009\u62e9\u91cd\u8bd5\uff0c\u6216\u8005\u53d6\u6d88\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->alert_message_poor_network2:Ljava/lang/String;

    .line 25
    const-string v0, "\u5f53\u524d\u8f6f\u4ef6\u5df2\u88ab\u6076\u610f\u7be1\u6539\uff0c\u5b58\u5728\u5b89\u5168\u9690\u60a3\uff0c\u8bf7\u5230\u4eac\u4e1c\u5b98\u7f51\u4e0b\u8f7d\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->alert_message_signature_error:Ljava/lang/String;

    .line 26
    const-string v0, "\u975e\u5e38\u62b1\u6b49\uff0c\u7531\u4e8e\u4fe1\u606f\u52a0\u8f7d\u9519\u8bef\uff0c\u6682\u65f6\u65e0\u6cd5\u663e\u793a\u4fe1\u606f"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->alert_message_poor_data_error:Ljava/lang/String;

    .line 27
    const-string v0, "\u8fd9\u4f4d\u5ba2\u5b98,\u7f51\u7edc\u5df2\u65ad\u5f00,\u8bf7\u68c0\u67e5\u4e00\u4e0b\u60a8\u7684\u7f51\u7edc"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->message_no_network:Ljava/lang/String;

    .line 30
    const-string v0, "\u786e\u8ba4\u9000\u51fa\u4eac\u4e1c\u5546\u57ce\uff1f"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->pg_home_exit_confrim_string:Ljava/lang/String;

    .line 31
    const-string v0, "\u518d\u6309\u4e00\u6b21\u9000\u51fa\u5e94\u7528"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->exit_toast_message:Ljava/lang/String;

    .line 33
    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->tip:Ljava/lang/String;

    .line 34
    const-string v0, "\u63d0\u793a"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->prompt:Ljava/lang/String;

    .line 35
    const-string v0, "\u9000\u51fa"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->exit:Ljava/lang/String;

    .line 36
    const-string v0, "\u91cd\u8bd5"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->retry:Ljava/lang/String;

    .line 37
    const-string v0, "\u8fd4\u56de"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->back:Ljava/lang/String;

    .line 38
    const-string v0, "\u786e\u5b9a"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->ok:Ljava/lang/String;

    .line 39
    const-string v0, "\u53d6\u6d88"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->cancel:Ljava/lang/String;

    .line 40
    const-string v0, "\u8fd4\u56de\u4e0a\u4e00\u9875"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->back_page:Ljava/lang/String;

    .line 41
    const-string v0, "\u8bbe\u7f6e\u7f51\u7edc"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->go_setup:Ljava/lang/String;

    .line 43
    const-string v0, "\u5317\u4eac"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_province_beijing:Ljava/lang/String;

    .line 44
    const-string v0, "\u670d\u52a1\u5668\u5fd9\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5!"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->gps_location_fail:Ljava/lang/String;

    .line 46
    const-string v0, "\u5168\u90e8"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->product_filter_hint:Ljava/lang/String;

    .line 47
    const-string v0, "\u5e93\u5b58"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->search_filter_region:Ljava/lang/String;

    .line 48
    const-string v0, "\u4ef7\u683c"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->search_filter_price:Ljava/lang/String;

    .line 49
    const-string v0, "\u914d\u9001\u65b9"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->search_filter_distribution:Ljava/lang/String;

    .line 50
    const-string v0, "\u4eac\u4e1c\u914d\u9001"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->search_filter_jd_distribute:Ljava/lang/String;

    .line 51
    const-string v0, "\u7b2c\u4e09\u65b9\u914d\u9001"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->search_filter_other_distribute:Ljava/lang/String;

    .line 52
    const-string v0, "\u6240\u6709\u7c7b\u76ee"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->search_filter_all_category:Ljava/lang/String;

    .line 54
    const-string v0, "\u957f\u6309\u83b7\u53d6\u56fe\u7247"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->need_long_click:Ljava/lang/String;

    .line 57
    const-string v0, "\u54a8\u8be2\u56de\u590d"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->comment_answer:Ljava/lang/String;

    .line 58
    const-string v0, "\u964d\u4ef7\u901a\u77e5"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->cost_count:Ljava/lang/String;

    .line 59
    const-string v0, "\u81ea\u63d0\u63d0\u9192"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->get_by_self:Ljava/lang/String;

    .line 62
    const-string v0, "\u60a8\u6240\u4f7f\u7528\u7684\u5df2\u662f\u6700\u65b0\u7248\u672c\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->software_no_update_msg:Ljava/lang/String;

    .line 63
    const-string v0, "\u4eac\u4e1c\u5347\u7ea7\u55bd\uff01"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->software_need_update_msg:Ljava/lang/String;

    .line 64
    const-string v0, "\u60a8\u6240\u4f7f\u7528\u7248\u672c\u592a\u4f4e\uff0c\u8bf7\u70b9\u51fb\u786e\u5b9a\u5347\u7ea7"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->software_must_update_msg:Ljava/lang/String;

    .line 66
    const-string v0, "\u9009\u62e9\u5145\u503c\u53f7\u7801"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->recharge_get_contacts:Ljava/lang/String;

    .line 67
    const-string v0, "\u4e3a\u4e86\u5e2e\u60a8\u66f4\u4fbf\u6377\u5730\u7ed9\u901a\u8baf\u5f55\u91cc\u7684\u4eba\u5145\u503c\uff0c\u8bf7\u5141\u8bb8\u6211\u4eec\u7684\u8bbf\u95ee\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->recharge_get_contacts_permission:Ljava/lang/String;

    .line 69
    const-string v0, "\u6682\u65e0\u6570\u636e"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->no_data:Ljava/lang/String;

    .line 70
    const-string v0, "\u6682\u65e0\u56fe\u7247"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->no_image:Ljava/lang/String;

    .line 71
    const-string v0, "jd_no_image_switch"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->no_image_switch_key:Ljava/lang/String;

    .line 72
    const-string v0, "no_image_alert_dialog_key"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->no_image_alert_dialog_key:Ljava/lang/String;

    .line 74
    const-string v0, "msg_auto_update_switch"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->msg_auto_update_switch_key:Ljava/lang/String;

    .line 76
    const-string v0, "\u60a8\u8fd8\u6ca1\u6709\u5b89\u88c5\u4eac\u4e1c\u624b\u6e38\u5e94\u7528\uff0c\u662f\u5426\u73b0\u5728\u53bb\u4e0b\u8f7d\u5e76\u5b89\u88c5?"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->jd_game_app_has_no_install:Ljava/lang/String;

    .line 78
    const-string v0, "\u7f3a\u5c11\u5fc5\u987b\u7684\u542f\u52a8\u6587\u4ef6\uff0c\u8bf7\u5c1d\u8bd5\u5378\u8f7d\u540e\u91cd\u65b0\u5b89\u88c5\u3002\u5982\u679c\u95ee\u9898\u4f9d\u65e7\uff0c\u8bf7\u53cd\u9988\u5e76\u7559\u4e0b\u60a8\u7684\u8054\u7cfb\u65b9\u5f0f\uff0c\u6211\u4eec\u5c06\u6d3e\u4e13\u4eba\u4e0e\u60a8\u8054\u7cfb\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->comment_feedback:Ljava/lang/String;

    .line 79
    const-string v0, "\u53bb\u53cd\u9988"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->label_feedback:Ljava/lang/String;

    .line 80
    const-string v0, "\u5173\u95ed"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->app_error_close:Ljava/lang/String;

    .line 82
    const-string v0, "\u60a8\u7684\u624b\u673a\u7f3a\u5c11\u6d4f\u89c8\u5668\u529f\u80fd\u6a21\u5757\uff0c\u65e0\u6cd5\u7ee7\u7eed\u64cd\u4f5c\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->not_find_browser:Ljava/lang/String;

    .line 83
    const-string v0, "\u60a8\u7684\u624b\u673a\u7f3a\u5c11\u62cd\u7167\u529f\u80fd\u6a21\u5757\uff0c\u65e0\u6cd5\u7ee7\u7eed\u64cd\u4f5c\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->not_find_camera:Ljava/lang/String;

    .line 84
    const-string v0, "\u60a8\u7684\u624b\u673a\u7f3a\u5c11\u76f8\u518c\u529f\u80fd\u6a21\u5757\uff0c\u65e0\u6cd5\u7ee7\u7eed\u64cd\u4f5c\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->not_find_gallery:Ljava/lang/String;

    .line 85
    const-string v0, "\u60a8\u7684\u624b\u673a\u7f3a\u5c11\u6240\u9700\u7684\u529f\u80fd\u6a21\u5757\uff0c\u65e0\u6cd5\u7ee7\u7eed\u64cd\u4f5c\u3002"

    sput-object v0, Lcom/jingdong/common/res/StringUtil;->not_find_other:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
