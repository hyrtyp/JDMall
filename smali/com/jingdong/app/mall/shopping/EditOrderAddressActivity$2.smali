.class Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;
.super Ljava/lang/Object;
.source "EditOrderAddressActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince:Landroid/widget/TextView;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mProvince2:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_2

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v1, "\u9009\u62e9\u7701\u4efd"

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createProvinceAlertDiglog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$3(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V

    .line 289
    :cond_1
    :goto_0
    return-void

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity:Landroid/widget/TextView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mCity2:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v1, "\u9009\u62e9\u57ce\u5e02"

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createCityAlertDiglog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$4(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_4
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea:Landroid/widget/TextView;

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mArea2:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_6

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v1, "\u9009\u62e9\u5730\u533a"

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createAreaAlertDiglog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$5(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_6
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown:Landroid/widget/TextView;

    if-eq p1, v0, :cond_7

    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    iget-object v0, v0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->mTown2:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    .line 287
    :cond_7
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;

    const-string v1, "\u9009\u62e9\u57ce\u9547"

    #calls: Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->createTownAlertDiglog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;->access$6(Lcom/jingdong/app/mall/shopping/EditOrderAddressActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
