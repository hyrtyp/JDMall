.class Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$3;
.super Ljava/lang/Object;
.source "PersonelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$3;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 800
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$3;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->access$1(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 801
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$3;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->access$1(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivity(Landroid/content/Intent;)V

    .line 802
    return-void
.end method
