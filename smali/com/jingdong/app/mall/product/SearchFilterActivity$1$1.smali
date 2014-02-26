.class Lcom/jingdong/app/mall/product/SearchFilterActivity$1$1;
.super Lcom/jingdong/app/mall/utils/ui/DialogController;
.source "SearchFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/SearchFilterActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/product/SearchFilterActivity$1;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/SearchFilterActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/SearchFilterActivity$1$1;->this$1:Lcom/jingdong/app/mall/product/SearchFilterActivity$1;

    .line 1063
    invoke-direct {p0}, Lcom/jingdong/app/mall/utils/ui/DialogController;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1067
    packed-switch p2, :pswitch_data_0

    .line 1072
    :goto_0
    return-void

    .line 1069
    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 1067
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method
