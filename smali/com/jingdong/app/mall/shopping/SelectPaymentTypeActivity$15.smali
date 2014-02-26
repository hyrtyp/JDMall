.class Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$15;
.super Ljava/lang/Object;
.source "SelectPaymentTypeActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->createPickAlertDiglog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$15;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$15;->val$dialog:Landroid/app/AlertDialog;

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 781
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$15;->this$0:Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;

    #calls: Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->pickSitesSelectedByJs(I)V
    invoke-static {v0, p3}, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;->access$1(Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity;I)V

    .line 782
    iget-object v0, p0, Lcom/jingdong/app/mall/shopping/SelectPaymentTypeActivity$15;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 783
    return-void
.end method
