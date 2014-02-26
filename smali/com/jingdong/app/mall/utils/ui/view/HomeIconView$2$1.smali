.class Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;
.super Ljava/lang/Object;
.source "HomeIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;
    .locals 1
    .parameter

    .prologue
    .line 411
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;->this$1:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;

    #getter for: Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->this$0:Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;
    invoke-static {v0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;->access$0(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2;)Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1$1;

    invoke-direct {v1, p0}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1$1;-><init>(Lcom/jingdong/app/mall/utils/ui/view/HomeIconView$2$1;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/utils/ui/view/HomeIconView;->post(Ljava/lang/Runnable;)Z

    .line 426
    return-void
.end method
