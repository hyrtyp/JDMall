.class Lcom/jingdong/common/entity/show/ProductShow$2;
.super Ljava/lang/Object;
.source "ProductShow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/common/entity/show/ProductShow;->shareProductNew(Landroid/widget/Button;Lcom/jingdong/common/entity/Product;Lcom/jingdong/common/utils/HttpGroup;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$button:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/widget/Button;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/common/entity/show/ProductShow$2;->val$button:Landroid/widget/Button;

    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/jingdong/common/entity/show/ProductShow$2;->val$button:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 399
    return-void
.end method
