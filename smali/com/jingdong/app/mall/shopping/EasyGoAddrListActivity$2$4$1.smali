.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;
.super Ljava/lang/Object;
.source "EasyGoAddrListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

.field private final synthetic val$index:I

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$items:[Ljava/lang/String;

    iput p3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$index:I

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;
    .locals 1
    .parameter

    .prologue
    .line 444
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    .line 452
    :try_start_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$items:[Ljava/lang/String;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v4

    const v5, 0x7f070353

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_1

    .line 455
    :try_start_1
    new-instance v3, Lcom/jingdong/common/utils/JSONObjectProxy;

    invoke-direct {v3}, Lcom/jingdong/common/utils/JSONObjectProxy;-><init>()V

    sput-object v3, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->jsonTemp:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 456
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    iget v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$index:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    sput-object v3, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->jsonTemp:Lcom/jingdong/common/utils/JSONObjectProxy;

    .line 457
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    iget v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$index:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "Name"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->sTempName:Ljava/lang/String;

    .line 458
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    iget v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$index:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "Id"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    sput-object v3, Lcom/jingdong/common/entity/DefaultEasyTempOrderInfo;->sTempId:Ljava/lang/Long;

    .line 459
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    const-class v4, Lcom/jingdong/app/mall/shopping/FillOrderActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    .local v2, intent:Landroid/content/Intent;
    const/4 v3, 0x1

    sput-boolean v3, Lcom/jingdong/common/constant/Constants;->bModifyEasyBuy:Z

    .line 462
    const/4 v3, 0x0

    sput-boolean v3, Lcom/jingdong/common/constant/Constants;->bEasyBuy:Z

    .line 463
    const/4 v3, 0x0

    sput-boolean v3, Lcom/jingdong/common/constant/Constants;->bAddEasyBuy:Z

    .line 466
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->startTaskActivityInFrame(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 533
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 534
    return-void

    .line 467
    :catch_0
    move-exception v1

    .line 469
    .local v1, e:Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 527
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 470
    :catch_2
    move-exception v1

    .line 473
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 475
    .end local v1           #e:Lorg/json/JSONException;
    :cond_1
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$items:[Ljava/lang/String;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v4

    const v5, 0x7f070355

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_2

    .line 477
    :try_start_3
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    iget v5, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$index:I

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    const-string v5, "Id"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->setDefaultTemp(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$1(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 478
    :catch_3
    move-exception v1

    .line 481
    .restart local v1       #e:Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 483
    .end local v1           #e:Lorg/json/JSONException;
    :cond_2
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$items:[Ljava/lang/String;

    aget-object v3, v3, p2

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v4

    const v5, 0x7f070354

    invoke-virtual {v4, v5}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v3

    if-nez v3, :cond_0

    .line 485
    :try_start_5
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v3

    iget v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$index:I

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v3

    const-string v4, "IsDefault"

    invoke-virtual {v3, v4}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 486
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    const-string v4, "\u4e0d\u80fd\u5220\u9664\u9ed8\u8ba4\u8f7b\u677e\u8d2d\u8bbe\u7f6e\uff0c\u60a8\u53ef\u4ee5\u5148\u8bbe\u7f6e\u5176\u4ed6\u8f7b\u677e\u8d2d\u4e3a\u9ed8\u8ba4\u8f7b\u677e\u8d2d\u8bbe\u7f6e\uff0c\u7136\u540e\u518d\u5220\u9664"

    #calls: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->showMsg(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$2(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 521
    :catch_4
    move-exception v1

    .line 524
    .restart local v1       #e:Lorg/json/JSONException;
    :try_start_6
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 489
    .end local v1           #e:Lorg/json/JSONException;
    :cond_3
    :try_start_7
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v4

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 490
    .local v0, alertDialog:Landroid/app/AlertDialog;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    const v4, 0x7f07034e

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 491
    const v3, 0x7f07034f

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 492
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    const v4, 0x7f070223

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$1;

    iget v5, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->val$index:I

    invoke-direct {v4, p0, v5}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$1;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;I)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 509
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;->this$2:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-result-object v3

    #getter for: Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;
    invoke-static {v3}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;

    move-result-object v3

    const v4, 0x7f0701a1

    invoke-virtual {v3, v4}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$2;

    invoke-direct {v4, p0}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1$2;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$4$1;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog;->setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 518
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method
