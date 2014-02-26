.class Lcom/jingdong/app/mall/product/ImageActivity$3;
.super Ljava/lang/Object;
.source "ImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/product/ImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/product/ImageActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/product/ImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/product/ImageActivity$3;->this$0:Lcom/jingdong/app/mall/product/ImageActivity;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 157
    iget-object v0, p0, Lcom/jingdong/app/mall/product/ImageActivity$3;->this$0:Lcom/jingdong/app/mall/product/ImageActivity;

    invoke-virtual {v0}, Lcom/jingdong/app/mall/product/ImageActivity;->finish()V

    .line 158
    return-void
.end method
