.class Lcom/jingdong/app/mall/personel/PersonelActivity$23$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$23;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$23;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$23;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$23;

    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2294
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$23;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$23;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->setUserInfo()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$59(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 2295
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$23;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$23;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->setUserClass()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$60(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 2296
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$23$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$23;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$23;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$23;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$23;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    #calls: Lcom/jingdong/app/mall/personel/PersonelActivity;->initPersonelUI()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->access$61(Lcom/jingdong/app/mall/personel/PersonelActivity;)V

    .line 2297
    return-void
.end method
