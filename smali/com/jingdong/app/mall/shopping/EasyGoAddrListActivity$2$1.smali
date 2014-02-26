.class Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1;
.super Lcom/jingdong/common/utils/MySimpleAdapter;
.source "EasyGoAddrListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .parameter
    .parameter "$anonymous0"
    .parameter
    .parameter "$anonymous2"
    .parameter "$anonymous3"
    .parameter "$anonymous4"

    .prologue
    .line 1
    .local p3, $anonymous1:Ljava/util/List;,"Ljava/util/List<*>;"
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/jingdong/common/utils/MySimpleAdapter;-><init>(Lcom/jingdong/common/frame/IMyActivity;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1;)Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 180
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1;->this$1:Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    .line 182
    invoke-super {p0, p1, p2, p3}, Lcom/jingdong/common/utils/MySimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 184
    .local v3, view:Landroid/view/View;
    move v1, p1

    .line 185
    .local v1, index:I
    rem-int/lit8 v4, p1, 0x2

    if-ne v4, v6, :cond_1

    .line 186
    const v4, 0x7f02025c

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 191
    :goto_0
    const v4, 0x7f0c01f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 193
    .local v2, mImage:Landroid/widget/RadioButton;
    :try_start_0
    invoke-static {}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity;->access$0()Lcom/jingdong/common/utils/JSONArrayPoxy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/jingdong/common/utils/JSONArrayPoxy;->getJSONObject(I)Lcom/jingdong/common/utils/JSONObjectProxy;

    move-result-object v4

    const-string v5, "IsDefault"

    invoke-virtual {v4, v5}, Lcom/jingdong/common/utils/JSONObjectProxy;->getInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 194
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 195
    sput-object v2, Lcom/jingdong/common/constant/Constants;->oldBtn:Landroid/widget/RadioButton;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_1
    new-instance v4, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1$1;

    invoke-direct {v4, p0, v1}, Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1$1;-><init>(Lcom/jingdong/app/mall/shopping/EasyGoAddrListActivity$2$1;I)V

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    return-object v3

    .line 188
    .end local v2           #mImage:Landroid/widget/RadioButton;
    :cond_1
    const v4, 0x7f02025e

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 198
    .restart local v2       #mImage:Landroid/widget/RadioButton;
    :catch_0
    move-exception v0

    .line 200
    .local v0, e1:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
