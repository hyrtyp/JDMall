.class Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;
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

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    iput-object p2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;->val$v:Landroid/view/View;

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 773
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->access$1(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    const-class v2, Lcom/jingdong/app/mall/personel/MyWebMessage;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 774
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v2}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->access$1(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v2

    const v3, 0x7f070489

    invoke-virtual {v2, v3}, Lcom/jingdong/app/mall/personel/PersonelActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v1, "com.360buy:navigationDisplayFlag"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 776
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;->val$v:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 777
    iget-object v1, p0, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener$1;->this$1:Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;

    #getter for: Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->this$0:Lcom/jingdong/app/mall/personel/PersonelActivity;
    invoke-static {v1}, Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;->access$1(Lcom/jingdong/app/mall/personel/PersonelActivity$ClickListener;)Lcom/jingdong/app/mall/personel/PersonelActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jingdong/app/mall/personel/PersonelActivity;->startActivityInFrame(Landroid/content/Intent;)V

    .line 778
    return-void
.end method
