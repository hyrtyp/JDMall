.class Lcom/jingdong/app/mall/shopping/CameraActivity$6;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/CameraActivity;->inteView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/CameraActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/CameraActivity$6;->this$0:Lcom/jingdong/app/mall/shopping/CameraActivity;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/CategoriesSelectionActivity;->launchForResult(Landroid/app/Activity;I)V

    .line 499
    return-void
.end method
