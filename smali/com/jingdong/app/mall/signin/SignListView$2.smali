.class Lcom/jingdong/app/mall/signin/SignListView$2;
.super Ljava/lang/Object;
.source "SignListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jingdong/app/mall/signin/SignListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/signin/SignListView;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/signin/SignListView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/signin/SignListView$2;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x0

    .line 168
    iget-object v9, p0, Lcom/jingdong/app/mall/signin/SignListView$2;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/jingdong/app/mall/signin/SignListView;->access$7(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/content/Context;

    move-result-object v9

    .line 169
    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    check-cast v1, Landroid/view/LayoutInflater;

    .line 170
    .local v1, localLayoutInflater:Landroid/view/LayoutInflater;
    const v9, 0x7f03011f

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 171
    .local v3, mView:Landroid/view/View;
    const v9, 0x7f0c0711

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 172
    .local v5, rule1:Landroid/widget/TextView;
    const v9, 0x7f0c0712

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 173
    .local v6, rule2:Landroid/widget/TextView;
    const v9, 0x7f0c0713

    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 174
    .local v7, rule3:Landroid/widget/TextView;
    new-instance v2, Landroid/widget/PopupWindow;

    .line 175
    iget-object v9, p0, Lcom/jingdong/app/mall/signin/SignListView$2;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinList:Landroid/widget/ListView;
    invoke-static {v9}, Lcom/jingdong/app/mall/signin/SignListView;->access$8(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/ListView;->getWidth()I

    move-result v9

    const/high16 v10, 0x41a0

    invoke-static {v10}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v10

    sub-int/2addr v9, v10

    .line 176
    const/high16 v10, 0x435c

    invoke-static {v10}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v10

    .line 174
    invoke-direct {v2, v3, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 178
    .local v2, mPopupWindow:Landroid/widget/PopupWindow;
    iget-object v9, p0, Lcom/jingdong/app/mall/signin/SignListView$2;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v9}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 179
    iget-object v9, p0, Lcom/jingdong/app/mall/signin/SignListView$2;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->listInfo:Lcom/jingdong/common/entity/SigninList;
    invoke-static {v9}, Lcom/jingdong/app/mall/signin/SignListView;->access$0(Lcom/jingdong/app/mall/signin/SignListView;)Lcom/jingdong/common/entity/SigninList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/jingdong/common/entity/SigninList;->getRankRule()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, rankRule:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v9, "#"

    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 181
    const-string v9, "#"

    invoke-virtual {v4, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 182
    .local v8, rules:[Ljava/lang/String;
    aget-object v9, v8, v12

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v9, 0x2

    aget-object v9, v8, v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    .end local v4           #rankRule:Ljava/lang/String;
    .end local v8           #rules:[Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/jingdong/app/mall/signin/JDPopupWindow;

    iget-object v9, p0, Lcom/jingdong/app/mall/signin/SignListView$2;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/jingdong/app/mall/signin/SignListView;->access$7(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9, v2}, Lcom/jingdong/app/mall/signin/JDPopupWindow;-><init>(Landroid/content/Context;Landroid/widget/PopupWindow;)V

    .line 189
    .local v0, jdWindow:Lcom/jingdong/app/mall/signin/JDPopupWindow;
    iget-object v9, p0, Lcom/jingdong/app/mall/signin/SignListView$2;->this$0:Lcom/jingdong/app/mall/signin/SignListView;

    #getter for: Lcom/jingdong/app/mall/signin/SignListView;->signinRule:Landroid/widget/ImageButton;
    invoke-static {v9}, Lcom/jingdong/app/mall/signin/SignListView;->access$9(Lcom/jingdong/app/mall/signin/SignListView;)Landroid/widget/ImageButton;

    move-result-object v9

    const/16 v10, 0x11

    const/high16 v11, 0x4170

    invoke-static {v11}, Lcom/jingdong/common/utils/DPIUtil;->dip2px(F)I

    move-result v11

    invoke-virtual {v0, v9, v10, v11, v12}, Lcom/jingdong/app/mall/signin/JDPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 190
    return-void
.end method
