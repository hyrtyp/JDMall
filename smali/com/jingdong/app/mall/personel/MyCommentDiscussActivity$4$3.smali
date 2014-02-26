.class Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$3;
.super Ljava/lang/Object;
.source "MyCommentDiscussActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$3;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 495
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4$3;->this$1:Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;

    iget-object v0, v0, Lcom/jingdong/app/mall/personel/MyCommentDiscussActivity$4;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 496
    return-void
.end method
