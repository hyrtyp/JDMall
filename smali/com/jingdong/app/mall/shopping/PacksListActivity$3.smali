.class Lcom/jingdong/app/mall/shopping/PacksListActivity$3;
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
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iput p2, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$index:I

    iput-object p3, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$mFlag:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const v11, 0x7f0c0474

    const v10, 0x7f0c0472

    const v9, 0x7f0c01e0

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 246
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    iget v6, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$index:I

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 247
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$mFlag:Landroid/widget/ImageView;

    const v6, 0x7f020060

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 248
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    iget v6, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$index:I

    aput-boolean v8, v5, v6

    .line 249
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 251
    .local v2, lMonet:Landroid/view/View;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 252
    .local v4, list:Landroid/view/View;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    .line 253
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 254
    .local v3, line:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 255
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 256
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_0
    return-void

    .line 259
    .end local v2           #lMonet:Landroid/view/View;
    .end local v3           #line:Landroid/view/View;
    .end local v4           #list:Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 260
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$mFlag:Landroid/widget/ImageView;

    const v6, 0x7f02005f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 261
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    iget v6, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$index:I

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 262
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    .line 263
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 265
    .restart local v2       #lMonet:Landroid/view/View;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    .line 266
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 267
    .restart local v4       #list:Landroid/view/View;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    .line 268
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 269
    .restart local v3       #line:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 270
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 274
    .end local v2           #lMonet:Landroid/view/View;
    .end local v3           #line:Landroid/view/View;
    .end local v4           #list:Landroid/view/View;
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_2

    .line 295
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$mFlag:Landroid/widget/ImageView;

    const v6, 0x7f02005f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 296
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    iget v6, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$index:I

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 297
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    .line 298
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 300
    .restart local v2       #lMonet:Landroid/view/View;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    .line 301
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 302
    .restart local v4       #list:Landroid/view/View;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->val$layout:Landroid/view/View;

    .line 303
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 304
    .restart local v3       #line:Landroid/view/View;
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 305
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 275
    .end local v2           #lMonet:Landroid/view/View;
    .end local v3           #line:Landroid/view/View;
    .end local v4           #list:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_3

    .line 278
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->bExtendFlag:[Z

    aput-boolean v8, v5, v1

    .line 279
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 280
    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 282
    .restart local v2       #lMonet:Landroid/view/View;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 283
    invoke-virtual {v5, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 284
    .restart local v4       #list:Landroid/view/View;
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 285
    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 287
    .restart local v3       #line:Landroid/view/View;
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 288
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 290
    iget-object v5, p0, Lcom/jingdong/app/mall/shopping/PacksListActivity$3;->this$0:Lcom/jingdong/app/mall/shopping/PacksListActivity;

    iget-object v5, v5, Lcom/jingdong/app/mall/shopping/PacksListActivity;->packLayoutBtn:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 291
    const v6, 0x7f0c0471

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 290
    check-cast v0, Landroid/widget/ImageView;

    .line 292
    .local v0, flag:Landroid/widget/ImageView;
    const v5, 0x7f020060

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 274
    .end local v0           #flag:Landroid/widget/ImageView;
    .end local v2           #lMonet:Landroid/view/View;
    .end local v3           #line:Landroid/view/View;
    .end local v4           #list:Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method
