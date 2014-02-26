.class Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;
.super Ljava/lang/Object;
.source "YanBaoActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/YanBaoActivity;->initYanBaoTitle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

.field private final synthetic val$index:I

.field private final synthetic val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBCategory;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    iput p3, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;->val$index:I

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 252
    if-eqz p2, :cond_0

    .line 256
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget-object v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;->val$item:Lcom/jingdong/common/entity/cart/CartResponseYBCategory;

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->initYanBaoContent(Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$2(Lcom/jingdong/app/mall/shopping/YanBaoActivity;Lcom/jingdong/common/entity/cart/CartResponseYBCategory;)V

    .line 257
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;->this$0:Lcom/jingdong/app/mall/shopping/YanBaoActivity;

    iget v1, p0, Lcom/jingdong/app/mall/shopping/YanBaoActivity$2;->val$index:I

    #calls: Lcom/jingdong/app/mall/shopping/YanBaoActivity;->freshTabButton(I)V
    invoke-static {v0, v1}, Lcom/jingdong/app/mall/shopping/YanBaoActivity;->access$3(Lcom/jingdong/app/mall/shopping/YanBaoActivity;I)V

    .line 260
    :cond_0
    return-void
.end method
