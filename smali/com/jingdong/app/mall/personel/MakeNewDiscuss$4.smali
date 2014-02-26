.class Lcom/jingdong/app/mall/personel/MakeNewDiscuss$4;
.super Ljava/lang/Object;
.source "MakeNewDiscuss.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->handleClickEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 262
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submitButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setPressed(Z)V

    .line 281
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #calls: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->checkInput()Z
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$3(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MakeNewDiscuss$4;->this$0:Lcom/jingdong/app/mall/personel/MakeNewDiscuss;

    #calls: Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->submit()V
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MakeNewDiscuss;->access$4(Lcom/jingdong/app/mall/personel/MakeNewDiscuss;)V

    .line 285
    :cond_0
    return-void
.end method
