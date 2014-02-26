.class Lcom/jingdong/app/mall/shopping/PacksListActivity$2;
.super Ljava/lang/Object;
.source "PacksListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/PacksListActivity;->setPackButn(Landroid/view/View;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

.field private final synthetic val$index:I

.field private final synthetic val$layout:Landroid/view/View;

.field private final synthetic val$mFlag:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/PacksListActivity;ILandroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$index:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$mFlag:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$layout:Landroid/view/View;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const v9, 0x7f0c0474

    const v8, 0x7f0c0472

    const v7, 0x7f0c01e0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 208
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    iget v4, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$index:I

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$mFlag:Landroid/widget/ImageView;

    const v4, 0x7f020060

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 210
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    iget v4, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$index:I

    aput-boolean v6, v3, v4

    .line 211
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, lMonet:Landroid/view/View;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 214
    .local v2, list:Landroid/view/View;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$layout:Landroid/view/View;

    .line 215
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 216
    .local v1, line:Landroid/view/View;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 218
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 236
    :goto_0
    return-void

    .line 225
    .end local v0           #lMonet:Landroid/view/View;
    .end local v1           #line:Landroid/view/View;
    .end local v2           #list:Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$mFlag:Landroid/widget/ImageView;

    const v4, 0x7f02005f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 226
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v3, v3, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    iget v4, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$index:I

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    .line 227
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 229
    .restart local v0       #lMonet:Landroid/view/View;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$layout:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 230
    .restart local v2       #list:Landroid/view/View;
    iget-object v3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$2;->val$layout:Landroid/view/View;

    .line 231
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 232
    .restart local v1       #line:Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 234
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
