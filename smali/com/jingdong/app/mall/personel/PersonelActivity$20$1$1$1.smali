.class Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1$1;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1$1;->this$3:Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1$1;->val$url:Ljava/lang/String;

    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1940
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1$1;->this$3:Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;->this$2:Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;)Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$20;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;)Lcom/jingdong/app/mall/personel/PersonelActivity$20;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$20;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$20;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$20;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1941
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "url"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1$1;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1942
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1$1;->this$3:Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;->this$2:Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$20$1$1;)Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$20;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$20$1;)Lcom/jingdong/app/mall/personel/PersonelActivity$20;

    move-result-object v1

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$20;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$20;->access$0(Lcom/jingdong/app/mall/personel/PersonelActivity$20;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivity(Landroid/content/Intent;)V

    .line 1943
    return-void
.end method
