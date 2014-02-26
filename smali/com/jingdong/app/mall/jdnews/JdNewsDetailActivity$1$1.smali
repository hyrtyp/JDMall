.class Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;
.super Ljava/lang/Object;
.source "JdNewsDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;->onEnd(Lcom/jingdong/common/utils/HttpGroup$HttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;

.field private final synthetic val$jdNews:Lcom/jingdong/common/entity/JdNews;

.field private final synthetic val$jdnewsDetailContent:Landroid/widget/TextView;

.field private final synthetic val$jdnewsDetailTime:Landroid/widget/TextView;

.field private final synthetic val$jdnewsDetailTitle:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;Landroid/widget/TextView;Lcom/jingdong/common/entity/JdNews;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->this$1:Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1;

    iput-object p2, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdnewsDetailTitle:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdNews:Lcom/jingdong/common/entity/JdNews;

    iput-object p4, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdnewsDetailTime:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdnewsDetailContent:Landroid/widget/TextView;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdnewsDetailTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdNews:Lcom/jingdong/common/entity/JdNews;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/JdNews;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v0, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdnewsDetailTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdNews:Lcom/jingdong/common/entity/JdNews;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/JdNews;->getAddTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdnewsDetailContent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jingdong/app/mall/jdnews/JdNewsDetailActivity$1$1;->val$jdNews:Lcom/jingdong/common/entity/JdNews;

    invoke-virtual {v1}, Lcom/jingdong/common/entity/JdNews;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    return-void
.end method
