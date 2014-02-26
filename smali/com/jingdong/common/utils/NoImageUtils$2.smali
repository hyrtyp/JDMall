.class Lcom/jingdong/common/utils/NoImageUtils$2;
.super Ljava/lang/Object;
.source "NoImageUtils.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/utils/NoImageUtils;->initImageView(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$imageHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/utils/NoImageUtils$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iput-object p2, p0, Lcom/jingdong/common/utils/NoImageUtils$2;->val$imageHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    iput-object p3, p0, Lcom/jingdong/common/utils/NoImageUtils$2;->val$imageView:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/jingdong/common/utils/NoImageUtils$2;->val$url:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 67
    iget-object v0, p0, Lcom/jingdong/common/utils/NoImageUtils$2;->val$myActivity:Lcom/jingdong/common/frame/IMyActivity;

    iget-object v1, p0, Lcom/jingdong/common/utils/NoImageUtils$2;->val$imageHttpGroup:Lcom/jingdong/common/utils/HttpGroup;

    iget-object v2, p0, Lcom/jingdong/common/utils/NoImageUtils$2;->val$imageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/jingdong/common/utils/NoImageUtils$2;->val$url:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/jingdong/common/utils/NoImageUtils;->loadImage(ZLcom/jingdong/common/frame/IMyActivity;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 68
    return v4
.end method
