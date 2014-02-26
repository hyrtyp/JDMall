.class Lcom/jingdong/app/mall/personel/PersonelActivity$32;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity;->handleMeetingEntrance(Lcom/jingdong/common/utils/JSONObjectProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$32;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    .line 2680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2682
    sget-boolean v0, Lcom/jingdong/app/mall/amHelper/AmHelper;->isShowDialog:Z

    if-eqz v0, :cond_0

    .line 2683
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$32;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const/4 v1, 0x0

    #setter for: Lcom/jingdong/app/mall/personel/PersonelActivity;->isNormal:Z
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$38(Lcom/jingdong/app/mall/personel/PersonelActivity;Z)V

    .line 2684
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$32;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$32;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const v2, 0x7f07055b

    invoke-virtual {v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$32;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;

    const v3, 0x7f0701a9

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->logout(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$39(Lcom/jingdong/app/mall/personel/PersonelActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 2686
    :cond_0
    return-void
.end method
