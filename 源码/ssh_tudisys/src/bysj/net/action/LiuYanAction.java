package bysj.net.action;

import java.util.*;
import bysj.net.model.*;
import bysj.net.manager.ObjectManager;
import com.opensymphony.xwork2.*;

import bysj.net.util.PageModel;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings({ "unchecked", "serial" })
public class LiuYanAction extends ActionSupport {
	private LiuYan util;
	private PageModel<LiuYan> pageModel;
	private List<User> listUser;
	private String errMsg;
	private String field;
	private String fieldValue;
	private ObjectManager objectManager;

	public String initUtil() throws Exception {
		Map session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		int id = (Integer) session.get("id");
		if (!"admin".equals(type)) {
			listUser = objectManager.getUtil("from User where id = " + id);
		} else {
			listUser = objectManager.getUtil("from User");
		}

		util = null;
		return "saveOrUpdate";
	}

	public String saveOrUpdateObject() throws Exception {
		objectManager.saveOrUpdateObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String deleteManyUtil() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids[] = request.getParameterValues("id");
		LiuYan util = null;
		for (String id : ids) {
			util = new LiuYan();
			util.setId(Integer.parseInt(id));
			objectManager.deleteObject(util);
		}
		util = null;
		return getAllUtil();
	}

	public String deleteUtil() throws Exception {
		objectManager.deleteObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String selectUtil() throws Exception {
		Map session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		int id = (Integer) session.get("id");
		if (!"admin".equals(type)) {
			listUser = objectManager.getUtil("from User where id = " + id);
		} else {
			listUser = objectManager.getUtil("from User");
		}

		util = (LiuYan) objectManager.getObject(new LiuYan(), util.getId());
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception {
		// Map session = ActionContext.getContext().getSession();
		// String type = (String) session.get("type");
		// int id = (Integer) session.get("id");
		if (null == pageModel) {
			pageModel = new PageModel<LiuYan>();
		}
		if (0 == pageModel.getCurrentPageNo()) {
			pageModel.setCurrentPageNo(1);
		}
		StringBuilder _sql = new StringBuilder();
		_sql.append(" from LiuYan where 1 = 1 ");
		// if (!"admin".equals(type)) {
		// _sql.append(" and user.id = " + id);
		// }
		if (null != field && field.trim().length() > 0) {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
			_sql.append(" and " + field + " like '%" + fieldValue + "%'");
		}
		pageModel = objectManager.getUtil(_sql.toString(),
				pageModel.getCurrentPageNo());
		errMsg = null;
		return "find";
	}

	public LiuYan getUtil() {
		return util;
	}

	public void setUtil(LiuYan util) {
		this.util = util;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public PageModel<LiuYan> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<LiuYan> pageModel) {
		this.pageModel = pageModel;
	}

	public List<User> getListUser() {
		return listUser;
	}

	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}

}
