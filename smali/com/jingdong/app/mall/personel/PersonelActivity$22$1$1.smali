.class Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1;->this$2:Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;

    .line 2202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1;)Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;
    .locals 1
    .parameter

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1;->this$2:Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1;->this$2:Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$22;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$22$1;)Lcom/jingdong/app/mall/personel/PersonelActivity$22;

    move-result-object v0

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$22;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PersonelActivity$22;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$22;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1$1;-><init>(Lcom/jingdong/app/mall/personel/PersonelActivity$22$1$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/PersonelActivity;->post(Ljava/lang/Runnable;)V

    .line 2219
    return-void
.end method
