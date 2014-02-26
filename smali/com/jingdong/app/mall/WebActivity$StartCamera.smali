.class final Lcom/jingdong/app/mall/WebActivity$StartCamera;
.super Ljava/lang/Object;
.source "WebActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/WebActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StartCamera"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/WebActivity;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/WebActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-object p1, p0, Lcom/jingdong/app/mall/WebActivity$StartCamera;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openCamera()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/jingdong/app/mall/WebActivity$StartCamera;->this$0:Lcom/jingdong/app/mall/WebActivity;

    invoke-static {v0}, Lcom/jingdong/app/mall/personel/PhotoUtils;->chooseUploadPhotoWay(Lcom/jingdong/app/mall/WebActivity;)V

    .line 797
    return-void
.end method
